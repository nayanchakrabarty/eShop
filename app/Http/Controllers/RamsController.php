<?php

namespace App\Http\Controllers;

use App\Models\Ram;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;
use Illuminate\Routing\Redirector;
use Illuminate\Http\RedirectResponse;
use App\Models\EventLog;
use App\Helpers\EventHelper;

class RamsController extends Controller
{

    /**
     * Display a listing of the rams.
     *
     * @return View
     */
    public function index()
    {
        $rams = Ram::get();
        return view('rams.index', compact('rams'));
    }

    /**
     * Show the form for creating a new ram.
     *
     * @return View
     */
    public function create()
    {
        
        return view('rams.create');
    }

    /**
     * Store a new ram in the storage.
     *
     * @param Request $request
     * @return RedirectResponse | Redirector
     */
    public function store(Request $request)
    {
        try {
            
            $data = $this->getData($request);
            
            Ram::create($data);

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'rams.create',
                    'changes' => EventHelper::logForCreate($data)
                ]);
            }

            return redirect()->route('rams.index')
                             ->with('success_message', 'Ram was successfully added!');
        } catch (Exception $exception) {
            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Display the specified ram.
     *
     * @param int $id
     * @return View
     */
    public function show($id)
    {
        $ram = Ram::findOrFail($id);
        return view('rams.show', compact('ram'));
    }

    /**
     * Show the form for editing the specified ram.
     *
     * @param int $id
     * @return View
     */
    public function edit($id)
    {
        $ram = Ram::findOrFail($id);
        
        return view('rams.edit', compact('ram'));
    }

    /**
     * Update the specified ram in the storage.
     *
     * @param  int $id
     * @param Request $request
     * @return RedirectResponse | Redirector
     */
    public function update($id, Request $request)
    {
        try {
            
            $data = $this->getData($request);
            
            $ram = Ram::findOrFail($id);
            $oldData = $ram->toArray();
            $ram->update($data);

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'rams.update',
                    'changes' => EventHelper::logForUpdate($oldData, $data)
                ]);
            }

            return redirect()->route('rams.index')
                             ->with('success_message', 'Ram was successfully updated!');
        } catch (Exception $exception) {
            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Remove the specified ram from the storage.
     *
     * @param  int $id
     * @return RedirectResponse | Redirector
     * @throws \Exception
     */
    public function destroy($id)
    {
        try {
            $ram = Ram::findOrFail($id);
            $oldData = $ram->toArray();
            $ram->delete();

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'rams.destroy',
                    'changes' => EventHelper::logForDelete($oldData)
                ]);
            }

            return redirect()->route('rams.index')
                             ->with('success_message', 'Ram was successfully deleted!');
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
            'title' => 'required|string|min:1|max:50',
            'mb_amount' => 'required|numeric|min:-2147483648|max:2147483647',
            'status' => 'required',
    
        ]);


        return $data;
    }

}
