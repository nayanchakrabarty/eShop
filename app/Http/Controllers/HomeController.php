<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\FilterOption;
use App\Models\FilterSection;
use App\Models\FilterTab;
use App\Models\Mobile;
use Illuminate\Http\Response;
use Session;
use App\Models\User;
use App\Models\Country;
use Illuminate\View\View;
use App\Models\Testimonial;
use Illuminate\Http\Request;
use App\Helpers\CommonHelper;
use App\Traits\CategoryTreeTrait;
use Illuminate\Support\Facades\Auth;
use function React\Promise\all;

class HomeController extends Controller
{
    use CategoryTreeTrait;

    public function media()
    {
        return view('media');
    }

    public function productDetails($productId)
    {
        $product = [];
        return view('front_end.product_details', compact('product'));
    }

    public function privacyPolicy()
    {
        $pageType = 'privacy-policy';
        $title = 'Privacy Policy - FlatShop';
        return view('front_end.privacy_policy', compact('title', 'pageType'));
    }

    public function home()
    {

        $Brands = Brand::orderBy('total_item', 'desc')->limit(5)->get();
        //dd($Brands);
        $latest_mobiles = Mobile::orderBy('created', 'desc')->limit(4)->get();
        //dd($latest_mobiles);

        return view('front_end.home_multiple_page', compact( 'Brands', 'latest_mobiles'));
    }

    public function compare(Request $request)
    {

        if ($request->ajax()) {
            return $this->searchList($request);
        }

        $mobiles = Mobile::with('brand')->get();
        $Brands = Brand::pluck('title', 'id')->all();

        $c1Mobile = Mobile::find($request->c1);
        $c2Mobile = Mobile::find($request->c2);
        $c3Mobile = Mobile::find($request->c3);
        $c4Mobile = Mobile::find($request->c4);

        return view('front_end.compare', compact('mobiles', 'Brands', 'c1Mobile', 'c2Mobile', 'c3Mobile', 'c4Mobile'));

    }

    public function newMobile(Request $request)
    {
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
                            'id' => $brand->id,
                            'name' => $brand->title,
                            'value' => $brand->id,
                            'sorting' => $brand->sorting
                        ];
                    }
                    $filterSection->type = 'Checkbox';
                } else if ($filterSection->type == 'Slider') {
                    foreach ($filterOptions as $filterOption) {
                        list($min, $max, $step) = explode('|', $filterOption->value);
                        $options = [
                            'name' => $filterOption->name,
                            'min' => $min,
                            'max' => $max,
                            'step' => $step,
                            'sorting' => $filterOption->sorting
                        ];
                    }

                } else {
                    foreach ($filterOptions as $filterOption) {
                        $options[] = [
                            'id' => $filterOption->id,
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

        //echo '<pre>';print_r($filters);exit;

        if (request()->wantsJson()) {
            return response()->json($filters, Response::HTTP_OK);
        }

        $query = $this->getQuery($request);

        $filtereds = $query->paginate('15');

        if ($request->ajax()) {
            return view('front_end.data_list', compact('filtereds'));
        }

        return view('front_end.mobile_list', compact('filters', 'filtereds'));
    }


    public function getQuery($request)
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

        return $query;

        //DB::enableQueryLog();echo $query->toSql();exit;

        //return response()->json($query->select('mobiles.*')->get(), Response::HTTP_OK);

    }

    public function termOfService()
    {
        $pageType = 'term-of-service';
        $title = 'Term of Service - FlatShop';
        return view('front_end.term_of_service', compact('title', 'pageType'));
    }

//    public function page($pageSlug = '')
//    {
//        if ($pageSlug == 'checkout' && !Auth::check()) {
//            Session::put('url.intended', url()->full());
//            return redirect('login');
//        }
//
//        $products = [];
//        $home_products = [];
//
//        $testimonials = Testimonial::where('status', 'Active')->get();
//        $users = User::whereHas('roles', function ($q) {
//            $q->where('name', '!=', 'Customer');
//        })->get();
//
//        $services = [];
//        $countries = Country::where('status', 'Active')->get();
//
//        $isTestimonialSubmitted = false;
//        if (Auth::check()) {
//            $isTestimonialSubmitted = Testimonial::where('customer_id', Auth::user()->id)->exists();
//        }
//
//        return view('front_end.home_multiple_page', compact(
//            'pageSlug',
//            'products',
//            'testimonials',
//            'users',
//            'services',
//            'countries',
//            'isTestimonialSubmitted',
//            'home_products'
//        ));
//    }

    public function pricing()
    {
        $pageSlug = 'pricing';
        $themes = [];

        $monthly_packages= [];
        $yearly_packages= [];
        $lifetime_packages= [];

        return view('front_end.home_multiple_page', compact('pageSlug', 'themes' ,'monthly_packages','yearly_packages','lifetime_packages'));
    }

    public function getCategoryBreadCrumb($category, &$breadCrumbs = [])
    {
        if ($category->title) {
            $breadCrumbs[] = $category->title;
        }

        if ($category->parent_id) {
            $category = Category::findOrFail($category->parent_id);
            $this->getCategoryBreadCrumb($category, $breadCrumbs);
        }

        return $breadCrumbs;
    }

    /**
     * Display a listing of the articles.
     *
     * @param Request $request
     * @return View
     */
    public function searchList(Request $request)
    {
        $query = Mobile::query();
        if (!empty($request->q)) {
            $query->orWhere('title', 'like', '%' . $request->q . '%');
        }

        $mobiles = $query->orderBy('id', 'DESC')->offset(0)->limit(7)->get();

        $queryData = [];

        if (!empty($request->c1)) {
            $queryData['c1'] = $request->c1;
        }

        if (!empty($request->c2)) {
            $queryData['c2'] = $request->c2;
        }

        if (!empty($request->c3)) {
            $queryData['c3'] = $request->c3;
        }

        if (!empty($request->c4)) {
            $queryData['c4'] = $request->c4;
        }

        foreach ($mobiles as $mobile) {
            if (!empty($request->field)) {
                $queryData[$request->field] = $mobile->id;
            }
            $mobile->href = route('compare', $queryData);
        }

//        $articles = $query->orderBy('id', 'DESC')->offset(0)->limit(10)->get();
//        foreach ($articles as $article) {
//            $article->cleanDetails = CommonHelper::cleanDescription($article->details, 180);
//            $leafCategory = $article->categories->first();
//            $breadCrumbs = $this->getCategoryBreadCrumb($leafCategory);
//            $article->breadCrumbs = implode(' <i class="fa fa-angle-right"></i> ', array_reverse($breadCrumbs));
//
//            $article->href = route('home.helpCenter', [
//                $leafCategory->product_id,
//                $leafCategory->id,
//                $article->id
//            ]
//            );
//        }

        if ($request->isHtml) {
            //return view('front_end.article_list_item2', compact('articles'));
        } else {
            return json_encode([
                "status" => true,
                "error" => null,
                "data" => [
                    "mobiles" => $mobiles->toArray()
                ]
            ]);
        }
    }

    public function helpCenter($productId, $categoryId = null, $articleId = null)
    {
        $selectedProduct = '';
        if (!empty($productId)) {
            $selectedProduct = Product::findOrFail($productId);
        }

        $selectedCategory = '';
        if (!empty($categoryId)) {
            $selectedCategory = Category::findOrFail($categoryId);
        }

        $selectedArticle = '';
        if (!empty($articleId)) {
            $selectedArticle = Article::findOrFail($articleId);
        }

        $articles = Article::whereHas('categories', function ($q) use ($categoryId) {
            $q->where('id', $categoryId);
        })->get();

        foreach ($articles as $article) {
            if (empty($selectedArticle)) {
                $selectedArticle = $article;
            }
        }

        if (is_null($categoryId)) {
            $articleListWithCategoryTree = $this->getArticleListWithCategoryTree($productId);
        }

        $products = Product::where('status', 'Active')->get();
        $testimonials = Testimonial::where('status', 'Active')->get();
        $users = User::where('status', 'Active')->get();

        $categoryMenuTree = $this->getCategoryTreeForMenuList($productId, null, $categoryId);

        if (is_null($categoryId) && is_null($articleId)) {
            return view('front_end.doc_home_level2', compact(
                'products',
                'testimonials',
                'users',
                'articles',
                'selectedArticle',
                'selectedProduct',
                'categoryMenuTree',
                'articleListWithCategoryTree'
            ));
        } else {
            return view('front_end.article_details', compact(
                'products',
                'articles',
                'selectedArticle',
                'selectedProduct',
                'productId',
                'selectedCategory',
                'categoryMenuTree'
            ));
        }
    }

    /**
     * Moves the attached file to the server.
     *
     * @param Symfony\Component\HttpFoundation\File\UploadedFile $file
     *
     * @return string
     */
    protected function moveFile($file)
    {
        if (!$file->isValid()) {
            return '';
        }

        return $file->store(config('codegenerator.files_upload_path'), config('filesystems.default'));
    }
}
