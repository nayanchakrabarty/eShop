<?php

namespace App\Http\Controllers;

use App\Models\Currency;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CurrenciesController extends Controller
{

    /**
     * Display a listing of the currencies.
     *
     * @return Illuminate\View\View
     */
    public function index()
    {
        $currencies = Currency::get();

        return view('currencies.index', compact('currencies'));
    }

    /**
     * Show the form for creating a new currency.
     *
     * @return Illuminate\View\View
     */
    public function create()
    {


        return view('currencies.create');
    }

    /**
     * Store a new currency in the storage.
     *
     * @param Illuminate\Http\Request $request
     *
     * @return Illuminate\Http\RedirectResponse | Illuminate\Routing\Redirector
     */
    public function store(Request $request)
    {
        try {

            $data = $this->getData($request);

            Currency::create($data);

            return redirect()->route('currencies.index')
                             ->with('success_message', 'Currency was successfully added!');

        } catch (Exception $exception) {

            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Display the specified currency.
     *
     * @param int $id
     *
     * @return Illuminate\View\View
     */
    public function show($id)
    {
        $currency = Currency::findOrFail($id);

        return view('currencies.show', compact('currency'));
    }

    /**
     * Show the form for editing the specified currency.
     *
     * @param int $id
     *
     * @return Illuminate\View\View
     */
    public function edit($id)
    {
        $currency = Currency::findOrFail($id);


        return view('currencies.edit', compact('currency'));
    }

    /**
     * Update the specified currency in the storage.
     *
     * @param  int $id
     * @param Illuminate\Http\Request $request
     *
     * @return Illuminate\Http\RedirectResponse | Illuminate\Routing\Redirector
     */
    public function update($id, Request $request)
    {
        try {

            $data = $this->getData($request);

            $currency = Currency::findOrFail($id);
            $currency->update($data);

            return redirect()->route('currencies.index')
                             ->with('success_message', 'Currency was successfully updated!');

        } catch (Exception $exception) {

            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Remove the specified currency from the storage.
     *
     * @param  int $id
     *
     * @return Illuminate\Http\RedirectResponse | Illuminate\Routing\Redirector
     */
    public function destroy($id)
    {
        try {
            $currency = Currency::findOrFail($id);
            $currency->delete();

            return redirect()->route('currencies.index')
                             ->with('success_message', 'Currency was successfully deleted!');

        } catch (Exception $exception) {

            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }


    /**
     * Get the request's data from the request.
     *
     * @param Illuminate\Http\Request\Request $request
     * @return array
     */
    protected function getData(Request $request)
    {
        $data = $request->validate([
            'title' => 'required|string|min:1|max:20',
            'code' => 'required|string|min:1|max:5',
            'rate' => 'required|numeric|min:-9999999.999|max:9999999.999',
            'default_currency' => 'required|numeric|min:-2147483648|max:2147483647',
            'sorting' => 'required|numeric|min:-2147483648|max:2147483647',

        ]);




        return $data;
    }

}
