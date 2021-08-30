<?php

namespace App\Http\Controllers;

use App\Helpers\EventHelper;
use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\EventLog;
use App\Models\Mobile;
use App\Library\PhotoGallery;
use App\Library\SiteScraper;
use App\Models\PriceSource;
use App\Models\Ram;
use App\Models\Region;
use App\Models\Storage;
use App\Models\VariationPrice;
use Illuminate\Http\Request;
use Exception;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use function React\Promise\all;

class MobilesController extends Controller
{
    /**
     * Display a listing of the mobiles.
     *
     * @return View
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            return $this->getDataTable($request);
        }
        $mobiles = Mobile::with('brand')->get();
        $Brands = Brand::pluck('title', 'id')->all();

        return view('mobiles.index', compact('mobiles', 'Brands'));
    }

    public function getQuery($request)
    {
        $query = Mobile::query();
//        if (!empty($request->startDate) && !empty($request->endDate)) {
//            $query->whereBetween('created', [
//                $request->startDate . ' 00:00:00',
//                $request->endDate . ' 23:59:59'
//            ]);
//        }

        if (!empty($request->mobileId)) {
            $query->where('id', $request->mobileId);
        }

        if (!empty($request->title)) {
            $query->where('title', $request->title);
        }

        if (!empty($request->status)) {
            $query->where('status', $request->status);
        }

        if (!empty($request->brandId)) {
            $query->where('brand_id', $request->brandId);
        }

        if (!empty($request->announced)) {
            $query->where('announced', $request->announced);
        }

        return $query;

    }

    /**
     * Display a json listing for table body.
     *
     * @param Request $request
     * @return Response
     * @throws Exception
     */
    private function getDataTable($request)
    {
        return datatables()->of($this->getQuery($request))
            ->addColumn('action', function ($mobile) {
                return view('mobiles.action', compact('mobile'));
            })
            ->rawColumns(['action'])
            ->make(true);
    }

    /**
     * Show the form for creating a new mobile.
     *
     * @return View
     */
    public function create()
    {
        $Brands = Brand::pluck('title', 'id')->all();

        return view('mobiles.create', compact('Brands'));
    }

    /**
     * Store a new mobile in the storage.
     *
     * @param $request
     *
     * @return RedirectResponse | Redirector
     */
    public function store(Request $request)
    {
        try {

            $data = $this->getData($request);

            Mobile::create($data);

            return redirect()->route('mobiles.index')
                ->with('success_message', 'Mobile was successfully added.');
        } catch (Exception $exception) {

            return back()->withInput()
                ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request.']);
        }
    }

    /**
     * Display the specified mobile.
     *
     * @param int $id
     *
     * @return View
     */
    public function show($id)
    {
        $mobile = Mobile::with('brand')->findOrFail($id);

        $photoGallery = new PhotoGallery();
        $mobile->default_image = $photoGallery->getDefaultImage($id, $mobile->images);

        $allMobiles = Mobile::where('origin_id', $mobile->origin_id)->get();
        if (count($allMobiles) > 1) {
            $mobile->is_duplicate = true;
        } else {
            $mobile->is_duplicate = false;
        }

        return view('mobiles.show', compact('mobile'));
    }

    /**
     * Show the form for editing the specified mobile.
     *
     * @param int $id
     *
     * @return View
     */
    public function edit($id)
    {
        $mobile = Mobile::findOrFail($id);
        $Brands = Brand::pluck('title', 'id')->all();

        return view('mobiles.edit', compact('mobile', 'Brands'));
    }

    /**
     * Update the specified mobile in the storage.
     *
     * @param int $id
     * @param  $request
     *
     * @return RedirectResponse | Redirector
     */
    public function update($id, Request $request)
    {
        $data = $this->getData($request);

        try {
            $mobile = Mobile::findOrFail($id);
            $mobile->update($data);

            return redirect()->route('mobiles.index')
                ->with('success_message', 'Mobile was successfully updated.');
        } catch (Exception $exception) {
            return back()->withInput()
                ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request.']);
        }
    }


    /**
     * Update the specified mobile in the storage.
     *
     * @param int $id
     * @param  $request
     *
     * @return string
     */
    public function updatePrice($id, Request $request)
    {
        $data = $request->validate([
            'price' => 'required|numeric|min:-2147483648|max:2147483647'
        ]);

        try {
            $mobile = Mobile::findOrFail($id);
            $mobile->update($data);

            return response()->json(['message' => 'Price updated successfully'], 200
            );
        } catch (Exception $exception) {
            return response()->json([
                'message' => 'Unexpected error occurred while trying to process your request'
            ], 400);
        }
    }

    function importPrice($id)
    {
        $mobile = Mobile::with('brand')->findOrFail($id);

        $result = app('App\Http\Controllers\PriceSourceController')->getPriceTableHtml($id, 'INR');

        return view('price_sources.import_price', compact('mobile', 'result'));
    }

    /**
     * Remove the specified mobile from the storage.
     *
     * @param int $id
     *
     * @return RedirectResponse | Redirector
     */
    public function destroy($id)
    {
        try {
            $mobile = Mobile::findOrFail($id);
            $mobile->delete();

            return redirect()->route('mobiles.index')
                ->with('success_message', 'Mobile was successfully deleted.');
        } catch (Exception $exception) {

            return back()->withInput()
                ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request.']);
        }
    }

    //For mobile price modal

    public function variationPrice($mobileId)
    {
        $mobile = Mobile::findOrFail($mobileId);

        $variationPrices = VariationPrice::with('region', 'ram', 'storage')->where('mobile_id', $mobileId)->get();

        $regions = Region::all()->pluck('title', 'id');
        $rams = Ram::all()->pluck('title', 'id');
        $storages = Storage::all()->pluck('title', 'id');

        return view('mobiles.modal_prices', compact('mobile', 'variationPrices', 'regions', 'rams', 'storages'));

    }

    public function storeVariationPrice(Request $request)
    {
        try {

            $data = $this->getPriceData($request);


            VariationPrice::create($data);

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'mobile.storeVariationPrices',
                    'changes' => EventHelper::logForCreate($data)
                ]);
            }
            $html = '';
            if (!empty($request->mobile_id)) {

                $variationPrices = VariationPrice::where('mobile_id', $request->mobile_id)
                    ->get();

                $html = view('mobiles.table_prices', compact('variationPrices'))->render();
            }

            return ['status' => 'OK', 'html' => $html, 'message' => 'Mobile data was successfully added!'];

        } catch (Exception $exception) {
            return ['status' => 'FAILED', 'message' => 'Something goes wrong!!!'];
        }

    }

    public function updateVariationPrice($Id, Request $request)
    {
        //$data = $this->getData($request);
        try {

            $data = $this->getPriceData($request);

            $variationPrice = VariationPrice::findOrFail($Id);

            $oldData = $variationPrice->toArray();

            $variationPrice->update($data);


            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'variation_prices.update',
                    'changes' => EventHelper::logForUpdate($oldData, $data)
                ]);
            }

            $html = '';

            if (!empty($request->mobile_id)) {

                $variationPrices = VariationPrice::where('mobile_id', $request->mobile_id)
                    ->get();

                $html = view('mobiles.table_prices', compact('variationPrices'))->render();
            }

            return ['status' => 'OK', 'html' => $html, 'message' => 'Mobile price was successfully updated!'];
        } catch (Exception $exception) {
            return ['status' => 'FAILED', 'message' => 'Something goes wrong!!!'];
        }
    }

    protected function getPriceData(Request $request)
    {
        $data = $request->validate([
            'mobile_id' => 'required',
            'region_id' => 'required',
            'ram_id' => 'required',
            'storage_id' => 'required',
            'price' => 'required|numeric|min:-1.0E+18|max:1.0E+18',
            'usd_price' => 'required|numeric|min:-1.0E+18|max:1.0E+18',
            'affiliate_url' => 'nullable',

        ]);

        return $data;
    }

    public function destroyVariationPrice($id)
    {
        try {
            $variationPrice = VariationPrice::findOrFail($id);
            $oldData = $variationPrice->toArray();
            $variationPrice->delete();

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'mobile.destroyVariationPrices',
                    'changes' => EventHelper::logForDelete($oldData)
                ]);
            }

            $variationPrices = VariationPrice::where('mobile_id', $variationPrice->mobile_id)->get();
            $html = view('mobiles.table_prices', compact('variationPrices'))->render();

            return ['status' => 'OK', 'html' => $html, 'message' => 'Mobile price was successfully deleted!'];
        } catch (Exception $exception) {
            return ['status' => 'FAILED', 'message' => 'Something goes wrong!!!'];
        }
    }


    /**
     * Get the request's data from the request.
     *
     * @param Request $request
     * @return array
     */
    protected function getData(Request $request)
    {
        $rules = [
            'brand_id' => 'required',
            'title' => 'required|string|min:1|max:255',
            'price' => 'required|numeric|min:-2147483648|max:2147483647',
            'technology' => 'required|string|min:1|max:255',
            'announced' => 'required|string|min:1|max:255',
            'status' => 'required|string|min:1|max:255',
            'dimensions' => 'required|string|min:1|max:255',
            'weight' => 'required|string|min:1|max:255',
            'sim' => 'required|string|min:1|max:255',
            'type' => 'required|string|min:1|max:255',
            'size' => 'required|string|min:1|max:255',
            'resolution' => 'required|string|min:1|max:255',
            'os' => 'required|string|min:1|max:255',
            'chipset' => 'required|string|min:1|max:255',
            'cpu' => 'required|string|min:1|max:255',
            'card_slot' => 'required|string|min:1|max:255',
            'ram' => 'required|string|min:1|max:25',
            'storage' => 'required|string|min:1|max:100',
            'main_camera' => 'required|string|min:1|max:255',
            'mc_filter' => 'required|numeric|min:-2147483648|max:2147483647',
            'mc_features' => 'required|string|min:1|max:255',
            'mc_video' => 'required|string|min:1|max:255',
            'selfie_camera' => 'required|string|min:1|max:255',
            'sc_filter' => 'required|numeric|min:-2147483648|max:2147483647',
            'sc_features' => 'required|string|min:1|max:255',
            'sc_video' => 'required|string|min:1|max:255',
            'loudspeaker' => 'required|string|min:1|max:255',
            'jack_3_5mm' => 'required|string|min:1|max:255',
            'wlan' => 'required|string|min:1|max:255',
            'bluetooth' => 'required|string|min:1|max:255',
            'gps' => 'required|string|min:1|max:255',
            'radio' => 'required|string|min:1|max:255',
            'usb' => 'required|string|min:1|max:255',
            'sensors' => 'required|string|min:1|max:255',
            'battery' => 'required|string|min:1|max:255',
            'battery_filter' => 'required|numeric|min:-2147483648|max:2147483647',
            'colors' => 'required|string|min:1|max:255',
            'ext' => 'required|string|min:1|max:20',
            'images' => 'required|numeric|min:-2147483648|max:2147483647',
            'revision' => 'required|numeric|min:-2147483648|max:2147483647',
            'origin_id' => 'required|numeric|min:0|max:4294967295',
            'sorting' => 'required|numeric|min:-2147483648|max:2147483647'
        ];

        return $request->validate($rules);
    }
}
