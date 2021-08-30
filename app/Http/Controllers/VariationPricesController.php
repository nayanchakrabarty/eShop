<?php

namespace App\Http\Controllers;

use App\Models\Ram;
use App\Models\Region;
use App\Models\Storage;
use Illuminate\Http\Request;
use App\Models\VariationPrice;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;
use Illuminate\Routing\Redirector;
use Illuminate\Http\RedirectResponse;
use App\Models\EventLog;
use App\Helpers\EventHelper;

class VariationPricesController extends Controller
{

    /**
     * Display a listing of the variation prices.
     *
     * @return View
     */
    public function index()
    {
        $variationPrices = VariationPrice::with('region','ram','storage')->get();
        return view('variation_prices.index', compact('variationPrices'));
    }

    /**
     * Show the form for creating a new variation price.
     *
     * @return View
     */
    public function create()
    {
        $regions = Region::all()->pluck('title','id');
		$rams = Ram::all()->pluck('title','id');
		$storages = Storage::all()->pluck('title','id');
        return view('variation_prices.create', compact('regions','rams','storages'));
    }

    /**
     * Store a new variation price in the storage.
     *
     * @param Request $request
     * @return RedirectResponse | Redirector
     */
    public function store(Request $request)
    {
        try {
            
            $data = $this->getData($request);
            
            VariationPrice::create($data);

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'variation_prices.create',
                    'changes' => EventHelper::logForCreate($data)
                ]);
            }

            return redirect()->route('variation_prices.index')
                             ->with('success_message', 'Variation Price was successfully added!');
        } catch (Exception $exception) {
            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Display the specified variation price.
     *
     * @param int $id
     * @return View
     */
    public function show($id)
    {
        $variationPrice = VariationPrice::with('region','ram','storage')->findOrFail($id);
        return view('variation_prices.show', compact('variationPrice'));
    }

    /**
     * Show the form for editing the specified variation price.
     *
     * @param int $id
     * @return View
     */
    public function edit($id)
    {
        $variationPrice = VariationPrice::findOrFail($id);
        $regions = Region::all()->pluck('title','id')->except($id);
		$rams = Ram::all()->pluck('title','id')->except($id);
		$storages = Storage::all()->pluck('title','id')->except($id);
        return view('variation_prices.edit', compact('variationPrice','regions','rams','storages'));
    }

    /**
     * Update the specified variation price in the storage.
     *
     * @param  int $id
     * @param Request $request
     * @return RedirectResponse | Redirector
     */
    public function update($id, Request $request)
    {
        try {
            
            $data = $this->getData($request);
            
            $variationPrice = VariationPrice::findOrFail($id);
            $oldData = $variationPrice->toArray();
            $variationPrice->update($data);

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'variation_prices.update',
                    'changes' => EventHelper::logForUpdate($oldData, $data)
                ]);
            }

            return redirect()->route('variation_prices.index')
                             ->with('success_message', 'Variation Price was successfully updated!');
        } catch (Exception $exception) {
            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Remove the specified variation price from the storage.
     *
     * @param  int $id
     * @return RedirectResponse | Redirector
     * @throws \Exception
     */
    public function destroy($id)
    {
        try {
            $variationPrice = VariationPrice::findOrFail($id);
            $oldData = $variationPrice->toArray();
            $variationPrice->delete();

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'variation_prices.destroy',
                    'changes' => EventHelper::logForDelete($oldData)
                ]);
            }

            return redirect()->route('variation_prices.index')
                             ->with('success_message', 'Variation Price was successfully deleted!');
        } catch (Exception $exception) {
            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
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
        $data = $request->validate([
            'region_id' => 'required',
            'ram_id' => 'required',
            'storage_id' => 'required',
            'price' => 'required|numeric|min:-1.0E+18|max:1.0E+18',
            'usd_price' => 'required|numeric|min:-1.0E+18|max:1.0E+18',
            'status' => 'required',
            'affiliate_url' => 'nullable',
    
        ]);


        return $data;
    }

}
