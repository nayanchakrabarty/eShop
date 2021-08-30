<?php

namespace App\Http\Controllers;

use App\Exports\CountryExport;
use App\Helpers\CommonHelper;
use App\Models\Country;
use Exception;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Illuminate\Routing\Redirector;
use Illuminate\Http\RedirectResponse;
use App\Models\EventLog;
use App\Helpers\EventHelper;
use Maatwebsite\Excel\Facades\Excel;
use Response;

class CountriesController extends Controller
{
    /**
     * Display a listing of the countries.
     *
     * @param Request $request
     * @return View | Response
     * @throws Exception
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            return $this->getDataTable($request);
        }

        $countries = Country::get();
        return view('countries.index', compact('countries'));
    }

    public function getQuery(Request $request)
    {
        $query = Country::query();
        if (!empty($request->countryName)) {
            $query->where('country_name', 'like', '%' . $request->countryName . '%');
        }

        if (!empty($request->countryCode)) {
            $query->where('country_code', 'like', '%' . $request->countryCode . '%');
        }

        if (!empty($request->currencyCode)) {
            $query->where('currency_code', 'like', '%' . $request->currencyCode . '%');
        }

        if (!empty($request->capital)) {
            $query->where('capital', 'like', '%' . $request->capital . '%');
        }

        if (!empty($request->continentName)) {
            $query->where('continent_name', 'like', '%' . $request->continentName . '%');
        }

        if (!empty($request->status)) {
            $query->where('status', $request->status);
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
            ->addColumn('action', function ($country) {
                return view('countries.action', compact('country'));
            })
            ->addIndexColumn()
            ->rawColumns(['action'])
            ->make(true);
    }

    public function exportXLSX(Request $request)
    {
        return Excel::download(
            new CountryExport($this->getQuery($request)),
            'country-' . time() . '.xlsx'
        );
    }

    public function printDetails($id)
    {
        set_time_limit(300);
        $country = Country::findOrFail($id);
        $view = view('countries.print_details', compact('country'));
        CommonHelper::generatePdf($view->render(), 'country-details-' . date('Ymd'));
    }

    /**
     * Show the form for creating a new country.
     *
     * @return View
     */
    public function create()
    {
        return view('countries.create');
    }

    /**
     * Store a new country in the storage.
     *
     * @param Request $request
     * @return RedirectResponse | Redirector
     */
    public function store(Request $request)
    {
        try {

            $data = $this->getData($request);

            Country::create($data);

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'countries.create',
                    'changes' => EventHelper::logForCreate($data)
                ]);
            }

            return redirect()->route('countries.index')
                             ->with('success_message', 'Country was successfully added!');
        } catch (Exception $exception) {
            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Display the specified country.
     *
     * @param int $id
     * @return View
     */
    public function show($id)
    {
        $country = Country::findOrFail($id);
        return view('countries.show', compact('country'));
    }

    /**
     * Show the form for editing the specified country.
     *
     * @param int $id
     * @return View
     */
    public function edit($id)
    {
        $country = Country::findOrFail($id);

        return view('countries.edit', compact('country'));
    }

    /**
     * Update the specified country in the storage.
     *
     * @param  int $id
     * @param Request $request
     * @return RedirectResponse | Redirector
     */
    public function update($id, Request $request)
    {
        try {

            $data = $this->getData($request);

            $country = Country::findOrFail($id);
            $oldData = $country->toArray();
            $country->update($data);

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'countries.update',
                    'changes' => EventHelper::logForUpdate($oldData, $data)
                ]);
            }

            return redirect()->route('countries.index')
                             ->with('success_message', 'Country was successfully updated!');
        } catch (Exception $exception) {
            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Remove the specified country from the storage.
     *
     * @param  int $id
     * @return RedirectResponse | Redirector
     * @throws \Exception
     */
    public function destroy($id)
    {
        try {
            $country = Country::findOrFail($id);
            $oldData = $country->toArray();
            $country->delete();

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'countries.destroy',
                    'changes' => EventHelper::logForDelete($oldData)
                ]);
            }

            return redirect()->route('countries.index')
                             ->with('success_message', 'Country was successfully deleted!');
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
            'country_name' => 'required|numeric|string|min:1|max:100',
            'country_code' => 'required|numeric|string|min:1|max:2',
            'currency_code' => 'nullable|string|min:0|max:3',
            'capital' => 'nullable|string|min:0|max:30',
            'continent_name' => 'required|string|min:1|max:100',
            'continent_code' => 'required|string|min:1|max:2',
            'status' => 'required',

        ]);




        return $data;
    }

}
