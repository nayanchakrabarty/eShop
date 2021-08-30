<?php

namespace App\Http\Controllers;

use App\Models\PriceSource;
use App\Models\Mobile;
use App\Models\Price;
use Illuminate\Http\Request;
use App\Libraries\SiteScraper;
use Illuminate\Support\Facades\DB;

class PriceSourceController extends Controller
{
    function getPriceTableHtml($mobileId, $activeCurrency)
    {
        $priceSources = DB::table('price_sources')
            ->where('price_sources.mobile_id', '=', $mobileId)
            ->join('prices', 'price_sources.id', '=', 'prices.price_source_id')
            ->join('currencies', 'currencies.id', '=', 'prices.currency_id')
            ->select('prices.*', 'currencies.code')
            ->get();

        $mapPrices = [];
        if (!empty($priceSources)) {
            foreach ($priceSources as $priceLine) {
                $mapPrices[$priceLine->code][] = [
                    'title' => $priceLine->title,
                    'price' => $priceLine->price
                ];
            }
        }

        try {
            $htmlPriceTable = view('price_sources.table_prices', compact('mapPrices', 'activeCurrency'))->render();
            $priceSources = PriceSource::where('mobile_id', '=', $mobileId)->get();

            $htmlPriceSourceTable = view('price_sources.table_price_sources', compact('priceSources'))->render();

        } catch (\Throwable $e) {
            $htmlPriceTable = '';
            $htmlPriceSourceTable = '';
        }

        return [
            'htmlPriceTable' => $htmlPriceTable,
            'htmlPriceSourceTable' => $htmlPriceSourceTable
        ];
    }

    /**
     * Store a new site in the storage.
     *
     * @param Request $request
     * @return array
     */
    public function store(Request $request)
    {
        // get all variant price from source site using url
        $siteScraper = new SiteScraper();
        $variants = $siteScraper->getAllVariants($request->url, $request->page_content);

        // merge all results
        $request->merge(['prices' => $variants]);

        try {
            $data = $this->getData($request);

            $urlHost = parse_url($request->url, PHP_URL_HOST);
            $priceSource = PriceSource::where([
                ['url', 'like', '%' . $urlHost . '%'],
                ['mobile_id', '=', $request->mobile_id]
            ])->get()->first();
            if ($priceSource) {
                $priceSource->update($data);

                // remove previous data
                $priceSource->prices()->delete();
            } else {
                $priceSource = PriceSource::create($data);
            }

            $activeCurrency = '';
            if (!empty($data['prices'])) {
                foreach ($data['prices'] as $priceLine) {
                    $price = new Price($priceLine);
                    $priceSource->prices()->save($price);

                    if (empty($activeCurrency)) {
                        $activeCurrency = $price->currency->code;
                    }
                }
            }

            return $this->getPriceTableHtml($request->mobile_id, $activeCurrency);

        } catch (Exception $exception) {
            return [
                'unexpected_error' => 'Unexpected error occurred while trying to process your request!'
            ];
        } catch (\Throwable $e) {
            return [
                'unexpected_error' => 'Unexpected error occurred while trying to process your request!'
            ];
        }
    }

    public function showSisterSites()
    {
        return view('price_sources.show_sisters');
    }

    public function getSisterSites(Request $request)
    {
        $siteScraper = new SiteScraper();
        $sites = $siteScraper->getSisterSites($request->url);

        return view('price_sources.table_sisters', compact('sites'))->with('no', 1);
    }

    /**
     * Remove the specified site from the storage.
     *
     * @param  int $id
     * @return RedirectResponse | Redirector
     */
    public function destroy($id)
    {
        try {
            $priceSource = PriceSource::findOrFail($id);
            $priceSource->delete();

            return redirect()
                ->route('mobiles.import_price', $priceSource->mobile_id)
                ->with('success_message', 'PriceSource was successfully deleted!');

        } catch (Exception $exception) {
            return back()
                ->withInput()
                ->withErrors([
                    'unexpected_error' => 'Unexpected error occurred while trying to process your request!'
                ]);
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
        return $request->validate([
            'mobile_id' => 'required',
            'url' => 'required|url|max:255',
            'prices.*.title' => 'required|string|min:1|max:255',
            'prices.*.price' => 'required|integer',
            'prices.*.currency_id' => 'required|integer'
        ]);
    }
}