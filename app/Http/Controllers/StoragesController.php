<?php

namespace App\Http\Controllers;

use App\Models\Storage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;
use Illuminate\Routing\Redirector;
use Illuminate\Http\RedirectResponse;
use App\Models\EventLog;
use App\Helpers\EventHelper;

class StoragesController extends Controller
{

    /**
     * Display a listing of the storages.
     *
     * @return View
     */
    public function index()
    {
        $storages = Storage::get();
        return view('storages.index', compact('storages'));
    }

    /**
     * Show the form for creating a new storage.
     *
     * @return View
     */
    public function create()
    {
        
        return view('storages.create');
    }

    /**
     * Store a new storage in the storage.
     *
     * @param Request $request
     * @return RedirectResponse | Redirector
     */
    public function store(Request $request)
    {
        try {
            
            $data = $this->getData($request);
            
            Storage::create($data);

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'storages.create',
                    'changes' => EventHelper::logForCreate($data)
                ]);
            }

            return redirect()->route('storages.index')
                             ->with('success_message', 'Storage was successfully added!');
        } catch (Exception $exception) {
            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Display the specified storage.
     *
     * @param int $id
     * @return View
     */
    public function show($id)
    {
        $storage = Storage::findOrFail($id);
        return view('storages.show', compact('storage'));
    }

    /**
     * Show the form for editing the specified storage.
     *
     * @param int $id
     * @return View
     */
    public function edit($id)
    {
        $storage = Storage::findOrFail($id);
        
        return view('storages.edit', compact('storage'));
    }

    /**
     * Update the specified storage in the storage.
     *
     * @param  int $id
     * @param Request $request
     * @return RedirectResponse | Redirector
     */
    public function update($id, Request $request)
    {
        try {
            
            $data = $this->getData($request);
            
            $storage = Storage::findOrFail($id);
            $oldData = $storage->toArray();
            $storage->update($data);

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'storages.update',
                    'changes' => EventHelper::logForUpdate($oldData, $data)
                ]);
            }

            return redirect()->route('storages.index')
                             ->with('success_message', 'Storage was successfully updated!');
        } catch (Exception $exception) {
            return back()->withInput()
                         ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Remove the specified storage from the storage.
     *
     * @param  int $id
     * @return RedirectResponse | Redirector
     * @throws \Exception
     */
    public function destroy($id)
    {
        try {
            $storage = Storage::findOrFail($id);
            $oldData = $storage->toArray();
            $storage->delete();

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'storages.destroy',
                    'changes' => EventHelper::logForDelete($oldData)
                ]);
            }

            return redirect()->route('storages.index')
                             ->with('success_message', 'Storage was successfully deleted!');
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
