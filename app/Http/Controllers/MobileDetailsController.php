<?php


namespace App\Http\Controllers;


use App\Models\Brand;
use App\Models\Mobile;

class MobileDetailsController extends Controller
{
    public function index($id)
    {
        $mobiles = Mobile::with('brand')->findOrFail($id);
        $Brands = Brand::pluck('title', 'id')->all();

        return view('front_end.mobile_detail', compact('mobiles', 'Brands'));
    }
}
