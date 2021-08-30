<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\FilterOption;
use App\Models\FilterSection;
use App\Models\FilterTab;
use App\Models\Mobile;
use DB;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;
use Illuminate\Routing\Redirector;
use Illuminate\Http\RedirectResponse;
use App\Models\EventLog;
use App\Helpers\EventHelper;

class FilterTabsController extends Controller
{

    /**
     * Display a listing of the filter tabs.
     *
     * @return View
     */
    public function index()
    {
        $filterTabs = FilterTab::get();
        return view('filter_tabs.index', compact('filterTabs'));
    }


    public function filters()
    {
        // send in header (Accept: application/json)
        // request()->wantsJson();

        $filters = [];
        $filterTabs = FilterTab::where('status', 'Active')
            ->orderBy('sorting', 'ASC')
            ->get();
        foreach ($filterTabs as $filterTab) {
            $filterSections = FilterSection::where([
                ['filter_tab_id', $filterTab->id],
                ['status', 'Active']
            ])->orderBy('sorting', 'ASC')->get();

            $sections = [];
            foreach ($filterSections as $filterSection) {

                $filterOptions = FilterOption::where([
                    ['filter_section_id', $filterSection->id],
                    ['status', 'Active']
                ])->orderBy('sorting', 'ASC')->get();

                $options = [];
                if ($filterSection->type == 'TableBrands') {
                    $brands = Brand::where([
                        ['total_item', '>', 0],
                        ['status', 'Active']
                    ])->orderBy('sorting', 'ASC')->get();
                    foreach ($brands as $brand) {
                        $options[] = [
                            'name' => $brand->title,
                            'value' => $brand->id,
                            'sorting' => $brand->sorting
                        ];
                    }
                    $filterSection->type = 'Checkbox';
                } else {
                    foreach ($filterOptions as $filterOption) {
                        $options[] = [
                            'name' => $filterOption->name,
                            'value' => $filterOption->value,
                            'sorting' => $filterOption->sorting
                        ];
                    }
                }

                $sections[] = [
                    'header' => $filterSection->show_label == 'Yes' ? $filterSection->label : '',
                    'type' => $filterSection->type,
                    'field' => $filterSection->field,
                    'options' => $options
                ];
            }

            $tab = [
                'tab' => $filterTab->title,
                'sorting' => $filterTab->sorting,
                'sections' => $sections,
            ];

            $filters[] = $tab;
        }

        print_r($filters);exit;

        if (request()->wantsJson()) {
            return response()->json($filters, Response::HTTP_OK);
        }

        return view('filter_tabs.index', compact('filterTabs'));
    }

    public function filteredProducts(Request $request)
    {
        $query = Mobile::query();
        if (!empty($request->brands)) {
            $mobileIds = explode('|', $request->brands);
            $query->whereIn('mobiles.brand_id', $mobileIds);
        }

        if (!empty($request->price_range)) {
            list($min, $max) = explode('|', $request->price_range, 2);
            $query->join('prices', function ($join) {
                $join->on('mobiles.id', '=', 'prices.mobile_id');
            })->where('prices.price', '>=', $min)->where('prices.price', '<=', $max);
        }

        if (!empty($request->market_status)) {
            $statuses = explode('|', $request->market_status);
            $query->where(function ($subQuery) use ($statuses) {
                foreach ($statuses as $status) {
                    $subQuery->orWhere('mobiles.status', 'like', '%' . $status . '%');
                }
            });
        }

        if (!empty($request->launched_within)) {
            if (strpos($request->launched_within, '-') !== false) {
                $startDate = date('Y-m-d', strtotime($request->launched_within));
                $endDate = date('Y-m-d');
            } else {
                $startDate = date('Y-m-d');
                $endDate = date('Y-m-d', strtotime($request->launched_within));
            }
            $query->whereBetween('mobiles.created', [$startDate, $endDate]);
        }

        if (!empty($request->ram_range)) {
            list($min, $max) = explode('|', $request->ram_range, 2);
            $query->join('rams', function ($join) {
                $join->on('mobiles.id', '=', 'rams.mobile_id');
            })->where('rams.mb_amount', '>=', $min)->where('rams.mb_amount', '<=', $max);
        }

        if (!empty($request->ram_range)) {
            list($min, $max) = explode('|', $request->ram_range, 2);
            $query->join('rams', function ($join) {
                $join->on('mobiles.id', '=', 'rams.mobile_id');
            })->where('rams.mb_amount', '>=', $min)->where('rams.mb_amount', '<=', $max);
        }

        if (!empty($request->storage_range)) {
            list($min, $max) = explode('|', $request->storage_range, 2);
            $query->join('storages', function ($join) {
                $join->on('mobiles.id', '=', 'storages.mobile_id');
            })->where('storages.mb_amount', '>=', $min)->where('storages.mb_amount', '<=', $max);
        }

        if (!empty($request->weight_range)) {
            list($min, $max) = explode('|', $request->weight_range, 2);
            $query->where('mobiles.weight', '>=', $min)
                ->where('mobiles.weight', '<=', $max);
        }

        if (!empty($request->network_type)) {
            $networkTypes = explode('|', $request->network_type);
            $query->where(function ($subQuery) use ($networkTypes) {
                foreach ($networkTypes as $networkType) {
                    $subQuery->orWhere('mobiles.technology', 'like', '%' . $networkType . '%');
                }
            });
        }

        if (!empty($request->sim_size)) {
            $simSizes = explode('|', $request->sim_size);
            $query->where(function ($subQuery) use ($simSizes) {
                foreach ($simSizes as $simSize) {
                    $subQuery->orWhere('mobiles.sim', 'like', '%' . $simSize . '%');
                }
            });
        }

        if (!empty($request->sim_support)) {
            $simSupports = explode('|', $request->sim_support);
            $query->where(function ($subQuery) use ($simSupports) {
                foreach ($simSupports as $simSupport) {
                    $subQuery->orWhere('mobiles.sim', 'like', '%' . $simSupport . '%');
                }
            });
        }

        if (!empty($request->battery_capacity)) {
            list($min, $max) = explode('|', $request->battery_capacity, 2);
            $query->where('mobiles.battery_filter', '>=', $min)
                ->where('mobiles.battery_filter', '<=', $max);
        }

        if (!empty($request->battery_others)) {
            $batteryOthers = explode('|', $request->battery_others);
            $query->where(function ($subQuery) use ($batteryOthers) {
                foreach ($batteryOthers as $batteryOther) {
                    $subQuery->orWhere('mobiles.battery', 'like', '%' . $batteryOther . '%');
                }
            });
        }

        if (!empty($request->screen_size)) {
            $screenSizes = explode('|', $request->screen_size);
            foreach ($screenSizes as $screenSize) {
                $query->orWhere(function ($subQuery) use ($screenSize) {
                    list($min, $max) = explode('-', $screenSize);
                    $subQuery->where('mobiles.size', '>=', $min)
                        ->where('mobiles.size', '<=', $max);
                });
            }
        }

        if (!empty($request->pixel_density)) {
            $query->where('mobiles.pixel_density', '>=', $request->pixel_density);
        }

        if (!empty($request->screen_features)) {
            $screenFeatures = explode('|', $request->screen_features);
            $query->where(function ($subQuery) use ($screenFeatures) {
                foreach ($screenFeatures as $screenFeature) {
                    if ($screenFeature == 'Gorilla Glass') {
                        $subQuery->orWhere('mobiles.protection', 'like', '%' . $screenFeature . '%');
                    } else {
                        $subQuery->orWhere('mobiles.type', 'like', '%' . $screenFeature . '%');
                    }
                }
            });
        }

        if (!empty($request->screen_resolution)) {
            $screenResolutions = explode('|', $request->screen_resolution);
            $query->where(function ($subQuery) use ($screenResolutions) {
                foreach ($screenResolutions as $screenResolution) {
                    $subQuery->orWhere(function ($subQuery1) use ($screenResolution) {
                        list($min, $max) = explode('-', $screenResolution);
                        $subQuery1->where('mobiles.px_resolution', '>=', $min)
                            ->where('mobiles.px_resolution', '<=', $max);
                    });
                }
            });
        }

        if (!empty($request->refresh_rate)) {
            $refreshRates = explode('|', $request->refresh_rate);
            $query->where(function ($subQuery) use ($refreshRates) {
                foreach ($refreshRates as $refreshRate) {
                    $subQuery->orWhere(function ($subQuery1) use ($refreshRate) {
                        list($min, $max) = explode('-', $refreshRate);
                        $subQuery1->where('mobiles.hz_refresh_rate', '>=', $min)
                            ->where('mobiles.hz_refresh_rate', '<=', $max);
                    });
                }
            });
        }

        if (!empty($request->processor_speed)) {
            list($min, $max) = explode('-', $request->processor_speed);
            $query->where('mobiles.mhz_processor_speed', '>=', $min)
                ->where('mobiles.mhz_processor_speed', '<=', $max);
        }

        if (!empty($request->system_on_chip)) {
            $systemOnChips = explode('|', $request->system_on_chip);
            $query->where(function ($subQuery) use ($systemOnChips) {
                foreach ($systemOnChips as $systemOnChip) {
                    $subQuery->orWhere('mobiles.chipset', 'like', '%' . $systemOnChip . '%');
                }
            });
        }

        if (!empty($request->processor_cores)) {
            $processorCores = explode('|', $request->processor_cores);
            $query->where(function ($subQuery) use ($processorCores) {
                foreach ($processorCores as $processorCore) {
                    $subQuery->orWhere('mobiles.cpu', 'like', '%' . $processorCore . '%');
                }
            });
        }

        if (!empty($request->mc_resolution)) {
            list($min, $max) = explode('-', $request->mc_resolution);
            $query->join('cameras', function ($join) {
                $join->on('mobiles.id', '=', 'cameras.mobile_id');
            })->where('cameras.mb_resolution', '>=', $min)
                ->where('cameras.mb_resolution', '<=', $max)
                ->where('cameras.type', '=', 'Main');
        }

        if (!empty($request->mc_number)) {
            $mcNumbers = explode('|', $request->mc_number);
            $query->where(function ($subQuery) use ($mcNumbers) {
                foreach ($mcNumbers as $mcNumber) {
                    $subQuery->orWhere('mobiles.main_camera', 'like', '%' . $mcNumber . '%');
                }
            });
        }

        if (!empty($request->mc_features)) {
            $mcFeatures = explode('|', $request->mc_features);
            $query->where(function ($subQuery) use ($mcFeatures) {
                foreach ($mcFeatures as $mcFeature) {
                    if (in_array($mcFeature, ['HDR', 'panorama', 'flash'])) {
                        $subQuery->orWhere('mobiles.mc_features', 'like', '%' . $mcFeature . '%');
                    } else {
                        $subQuery->orWhere('mobiles.main_camera', 'like', '%' . $mcFeature . '%');
                    }
                }
            });
        }

        if (!empty($request->mc_video)) {
            $mcVideos = explode('|', $request->mc_video);
            $query->where(function ($subQuery) use ($mcVideos) {
                foreach ($mcVideos as $mcVideo) {
                    $subQuery->orWhere('mobiles.mc_video', 'like', '%' . $mcVideo . '%');
                }
            });
        }

        if (!empty($request->sc_resolution)) {
            list($min, $max) = explode('-', $request->sc_resolution);
            $query->join('cameras', function ($join) {
                $join->on('mobiles.id', '=', 'cameras.mobile_id');
            })->where('cameras.mb_resolution', '>=', $min)
                ->where('cameras.mb_resolution', '<=', $max)
                ->where('cameras.type', '=', 'Front');
        }

        if (!empty($request->sc_number)) {
            $scNumbers = explode('|', $request->sc_number);
            $query->where(function ($subQuery) use ($scNumbers) {
                foreach ($scNumbers as $scNumber) {
                    $subQuery->orWhere('mobiles.selfie_camera', 'like', '%' . $scNumber . '%');
                }
            });
        }

        if (!empty($request->sc_features)) {
            $scFeatures = explode('|', $request->sc_features);
            $query->where(function ($subQuery) use ($scFeatures) {
                foreach ($scFeatures as $scFeature) {
                    if (in_array($scFeature, ['HDR', 'panorama', 'flash'])) {
                        $subQuery->orWhere('mobiles.sc_features', 'like', '%' . $scFeature . '%');
                    } else {
                        $subQuery->orWhere('mobiles.selfie_camera', 'like', '%' . $scFeature . '%');
                    }
                }
            });
        }

        if (!empty($request->connectivity)) {
            $connectivityList = explode('|', $request->connectivity);
            $query->where(function ($subQuery) use ($connectivityList) {
                foreach ($connectivityList as $connectivity) {
                    if ($connectivity == 'Wi-Fi') {
                        $subQuery->orWhere('mobiles.wlan', 'like', '%' . $connectivity . '%');
                    } else if ($connectivity == 'NFC') {
                        $subQuery->orWhere('mobiles.nfc', 'like', '%Yes%');
                    } else if ($connectivity == 'GPS') {
                        $subQuery->orWhere('mobiles.gps', 'like', '%Yes%');
                    } else if ($connectivity == 'Radio') {
                        $subQuery->orWhere('mobiles.radio', 'like', '%Yes%');
                    } else if ($connectivity == 'Bluetooth') {
                        $subQuery->orWhere('mobiles.bluetooth', '!=', 'No');
                    } else if ($connectivity == 'USB Type-C') {
                        $subQuery->orWhere('mobiles.usb', 'like', '%' . $connectivity . '%');
                    } else if ($connectivity == 'Infrared') {
                        $subQuery->orWhere('mobiles.infrared', 'like', '%Yes%');
                    }
                }
            });
        }

        if (!empty($request->sensors)) {
            $sensors = explode('|', $request->sensors);
            $query->where(function ($subQuery) use ($sensors) {
                foreach ($sensors as $sensor) {
                    $subQuery->orWhere('mobiles.sensors', 'like', '%' . $sensor . '%');
                }
            });
        }

        if (!empty($request->android)) {
            $osVersions = explode('|', $request->android);
            $query->where(function ($subQuery) use ($osVersions) {
                foreach ($osVersions as $osVersion) {
                    $subQuery->orWhere('mobiles.os', 'like', '%' . $osVersion . '%');
                }
            });
        }

        if (!empty($request->ios)) {
            $osVersions = explode('|', $request->ios);
            $query->where(function ($subQuery) use ($osVersions) {
                foreach ($osVersions as $osVersion) {
                    $subQuery->orWhere('mobiles.os', 'like', '%' . $osVersion . '%');
                }
            });
        }

        if (!empty($request->os_others)) {
            $osVersions = explode('|', $request->os_others);
            $query->where(function ($subQuery) use ($osVersions) {
                foreach ($osVersions as $osVersion) {
                    $subQuery->orWhere('mobiles.os', 'like', '%' . $osVersion . '%');
                }
            });
        }


        //DB::enableQueryLog();echo $query->toSql();exit;

        return response()->json($query->select('mobiles.*')->get(), Response::HTTP_OK);
    }

    /**
     * Show the form for creating a new filter tab.
     *
     * @return View
     */
    public function create()
    {

        return view('filter_tabs.create');
    }

    /**
     * Store a new filter tab in the storage.
     *
     * @param Request $request
     * @return RedirectResponse | Redirector
     */
    public function store(Request $request)
    {
        try {

            $data = $this->getData($request);

            FilterTab::create($data);

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'filter_tabs.create',
                    'changes' => EventHelper::logForCreate($data)
                ]);
            }

            return redirect()->route('filter_tabs.index')
                ->with('success_message', 'Filter Tab was successfully added!');
        } catch (Exception $exception) {
            return back()->withInput()
                ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Display the specified filter tab.
     *
     * @param int $id
     * @return View
     */
    public function show($id)
    {
        $filterTab = FilterTab::findOrFail($id);
        return view('filter_tabs.show', compact('filterTab'));
    }

    /**
     * Show the form for editing the specified filter tab.
     *
     * @param int $id
     * @return View
     */
    public function edit($id)
    {
        $filterTab = FilterTab::findOrFail($id);

        return view('filter_tabs.edit', compact('filterTab'));
    }

    /**
     * Update the specified filter tab in the storage.
     *
     * @param int $id
     * @param Request $request
     * @return RedirectResponse | Redirector
     */
    public function update($id, Request $request)
    {
        try {

            $data = $this->getData($request);

            $filterTab = FilterTab::findOrFail($id);
            $oldData = $filterTab->toArray();
            $filterTab->update($data);

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'filter_tabs.update',
                    'changes' => EventHelper::logForUpdate($oldData, $data)
                ]);
            }

            return redirect()->route('filter_tabs.index')
                ->with('success_message', 'Filter Tab was successfully updated!');
        } catch (Exception $exception) {
            return back()->withInput()
                ->withErrors(['unexpected_error' => 'Unexpected error occurred while trying to process your request!']);
        }
    }

    /**
     * Remove the specified filter tab from the storage.
     *
     * @param int $id
     * @return RedirectResponse | Redirector
     * @throws \Exception
     */
    public function destroy($id)
    {
        try {
            $filterTab = FilterTab::findOrFail($id);
            $oldData = $filterTab->toArray();
            $filterTab->delete();

            if (config('settings.IS_EVENT_LOGS_ENABLE')) {
                EventLog::create([
                    'user_id' => Auth::user()->id,
                    'end_point' => 'filter_tabs.destroy',
                    'changes' => EventHelper::logForDelete($oldData)
                ]);
            }

            return redirect()->route('filter_tabs.index')
                ->with('success_message', 'Filter Tab was successfully deleted!');
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
            'sorting' => 'required|numeric|min:-2147483648|max:2147483647',
            'status' => 'nullable',

        ]);


        return $data;
    }

}
