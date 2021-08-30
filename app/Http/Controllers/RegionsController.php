<?php

namespace App\Http\Controllers;

use App\Models\Region;
use App\Models\Currency;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;
use Illuminate\Routing\Redirector;
use Illuminate\Http\RedirectResponse;
use App\Models\EventLog;
use App\Helpers\EventHelper;

class RegionsController extends Controller
{

    /**
     * Display a listing of the regions.
     *
     * @return View
     */
    public function index()
    {
        $regions = Region::with('currency')->get();
        return view('regions.index', compact('regions'));
    }

    /**
     * Show the form for creating a new region.
     *
     * @return View
     */
    public function create()
    {
        $currencies = Currency::all()->pluck('title','id');
        return view('regions.create', compact('currencies'));
    }

    /**
     * Store a new region in the storage.
     *
     * @param Request $request
     * @return RedirectResponse | Redirector
     */
    public function store(Request $request)
    {
        try {
            
            $data = $this->getData($request);
            
            Region::create($data);

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'regions.create',
                    'changes' => EventHelper::logForCreate($data)
                ]);
            }

            return redirect()->route('regions.index')
                             ->with('success_message', 'Region was successfully added!');
        } catch (Exception $exception) {
            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Display the specified region.
     *
     * @param int $id
     * @return View
     */
    public function show($id)
    {
        $region = Region::with('currency')->findOrFail($id);
        return view('regions.show', compact('region'));
    }

    /**
     * Show the form for editing the specified region.
     *
     * @param int $id
     * @return View
     */
    public function edit($id)
    {
        $region = Region::findOrFail($id);
        $currencies = Currency::all()->pluck('title','id')->except($id);
        return view('regions.edit', compact('region','currencies'));
    }

    /**
     * Update the specified region in the storage.
     *
     * @param  int $id
     * @param Request $request
     * @return RedirectResponse | Redirector
     */
    public function update($id, Request $request)
    {
        try {
            
            $data = $this->getData($request);
            
            $region = Region::findOrFail($id);
            $oldData = $region->toArray();
            $region->update($data);

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'regions.update',
                    'changes' => EventHelper::logForUpdate($oldData, $data)
                ]);
            }

            return redirect()->route('regions.index')
                             ->with('success_message', 'Region was successfully updated!');
        } catch (Exception $exception) {
            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Remove the specified region from the storage.
     *
     * @param  int $id
     * @return RedirectResponse | Redirector
     * @throws \Exception
     */
    public function destroy($id)
    {
        try {
            $region = Region::findOrFail($id);
            $oldData = $region->toArray();
            $region->delete();

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'regions.destroy',
                    'changes' => EventHelper::logForDelete($oldData)
                ]);
            }

            return redirect()->route('regions.index')
                             ->with('success_message', 'Region was successfully deleted!');
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
            'title' => 'required|string|min:1|max:100',
            'currency_id' => 'required',
            'iso_code' => 'required|string|min:1|max:5',
            'status' => 'required',
    
        ]);


        return $data;
    }

}
