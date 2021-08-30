<?php

namespace App\Http\Controllers;

use App\Models\PriceSource;
use App\Models\Price;
use App\Models\Currency;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PricesController extends Controller
{
    /**
     * Display a listing of the prices.
     *
     * @return View
     */
    public function index()
    {
        $prices = Price::with('priceSource', 'currency')->get();

        return view('prices.index', compact('prices'));
    }

    /**
     * Show the form for creating a new price.
     *
     * @return View
     */
    public function create()
    {
        $sites = PriceSource::pluck('url','id')->all();
        $currencies = Currency::pluck('title','id')->all();

        return view('prices.create', compact('sites','currencies'));
    }

    /**
     * Store a new price in the storage.
     *
     * @param Request $request
     *
     * @return RedirectResponse | Redirector
     */
    public function store(Request $request)
    {
        try {

            $data = $this->getData($request);

            Price::create($data);

            return redirect()->route('prices.index')
                             ->with('success_message', 'Price was successfully added!');

        } catch (Exception $exception) {

            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Display the specified price.
     *
     * @param int $id
     *
     * @return View
     */
    public function show($id)
    {
        $price = Price::with('priceSource','currency')->findOrFail($id);

        return view('prices.show', compact('price'));
    }

    /**
     * Show the form for editing the specified price.
     *
     * @param int $id
     *
     * @return View
     */
    public function edit($id)
    {
        $price = Price::findOrFail($id);
        $sites = PriceSource::pluck('url','id')->all();
        $currencies = Currency::pluck('title','id')->all();

        return view('prices.edit', compact('price','sites','currencies'));
    }

    /**
     * Update the specified price in the storage.
     *
     * @param  int $id
     * @param Request $request
     *
     * @return RedirectResponse | Redirector
     */
    public function update($id, Request $request)
    {
        try {

            $data = $this->getData($request);

            $price = Price::findOrFail($id);
            $price->update($data);

            return redirect()->route('prices.index')
                             ->with('success_message', 'Price was successfully updated!');

        } catch (Exception $exception) {

            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Remove the specified price from the storage.
     *
     * @param  int $id
     *
     * @return RedirectResponse | Redirector
     */
    public function destroy($id)
    {
        try {
            $price = Price::findOrFail($id);
            $price->delete();

            return redirect()->route('prices.index')
                             ->with('success_message', 'Price was successfully deleted!');

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
            'site_id' => 'required',
            'title' => 'required|string|min:1|max:255',
            'price' => 'required|numeric|min:-2147483648|max:2147483647',
            'currency_id' => 'required',

        ]);

        return $data;
    }

}
