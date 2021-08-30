@extends('layouts.home')

@section('css')

    <link rel="stylesheet" type="text/css" href="{{ asset('css/slider.css') }}" >

@endsection

@section('content')

    <div class="outer_wrap content_wrap">
        <div class="content_wrap_inner">
            <div class="home_top_panel">
                <div class="product_left_panel">
                    <div id="mobile" class="mobile_top_div">
                        <div class="lets_find">
                            Lets Find a Mobile For You!
                        </div>
                        <div class="clr"></div>
                        <div class="data_panel">
                            <div class="inner_txt">By Price</div>
                            <div class="price_bar">
                                <div class="wrapper">
                                    <div class="range-slider">
                                        <input type="text" class="js-range-slider" value="" />
                                    </div>
                                    <div class="extra-controls form-inline">
                                        <div class="form-group">
                                            <input type="text" class="js-input-from form-control" value="0" />
                                            <span style="margin: 0 40px">to</span>
                                            <input type="text" class="js-input-to form-control" value="0" />
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="clr"></div>
                            <div class="view_detail_button find_mob">
                                Find Mobiles
                                <span>></span>
                            </div>
                            <div class="clr"></div>
                            <div class="inner_txt">Price Around</div>
                            <div class="clr"></div>
                            <ul class="prc_range">
                                <li>
                                    <span class="target_link">Rs. 5,000 </span>
                                </li>
                                &nbsp;
                                <li>
                                    <span class="target_link">Rs. 8,000 </span>
                                </li>
                                &nbsp;
                                <li>
                                    <span class="target_link">Rs. 10,000 </span>
                                </li>
                                &nbsp;
                                <li>
                                    <span class="target_link">Rs. 15,000 </span>
                                </li>
                                <li>
                                    <span class="target_link">Rs. 20,000 </span>
                                </li>
                                &nbsp;
                                <li>
                                    <span class="target_link">Rs. 25,000 </span>
                                </li>
                            </ul>
                        </div>
                        <div class="right_brands">
                            <div class="right_panal mf_brands" style="margin-left: 9px;">
                                <div class="text_right">By Brand</div>
                                <ul class="by_brand">
                                    @foreach ($Brands as $Brand)
                                        <li>
                                            <span class="target_link">{{ $Brand->title }}</span>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>

                            <div class="right_panal">
                                <div class="text_right">By Features</div>
                                <ul class="by_brand">
                                    <li>
                                        <span class="target_link">4G VoLTE</span>
                                    </li>
                                    <li>
                                        <span class="target_link">4 GB RAM</span>
                                    </li>
                                    <li>
                                        <span class="target_link">4000 mah+ battery</span>
                                    </li>
                                    <li>
                                        <span class="target_link">16 MP+ Camera</span>
                                    </li>
                                    <li>
                                        <span class="target_link">Android pie 9.0</span>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="product_right_panel">
                    <div class="product_right_panel_content">
                        <div class="product_right_panel_hdr">
                            <a href="#">Popular Comparisions</a>
                        </div>
                        <ul class="product_right_panel_info">
                            <li>
                                <a href="#">

                                    <div class="box_1 ">
                                        <div class="vs">vs</div>

                                        <div class="compare_img left_side">
                                            <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >
                                        </div>
                                        <div class="compare_txt left-side">
                                            <div class="textpannel">

                                                Xiaomi Redmi Note 10

                                            </div>

                                            <div class="textpannel ">

                                                Xiaomi Redmi Note 10 Pro

                                            </div>
                                        </div>
                                        <div class="compare_img_right ">
                                            <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >
                                        </div>
                                    </div>

                                </a>
                            </li>

                            <li>
                                <a href="#">

                                    <div class="box_1 ">
                                        <div class="vs">vs</div>

                                        <div class="compare_img left_side">
                                            <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >
                                        </div>
                                        <div class="compare_txt left-side">
                                            <div class="textpannel">

                                                Xiaomi Redmi Note 10

                                            </div>

                                            <div class="textpannel ">

                                                Xiaomi Redmi Note 10 Pro

                                            </div>
                                        </div>
                                        <div class="compare_img_right ">
                                            <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >
                                        </div>
                                    </div>

                                </a>
                            </li>

                            <li>
                                <a href="#">

                                    <div class="box_1 ">
                                        <div class="vs">vs</div>

                                        <div class="compare_img left_side">
                                            <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >
                                        </div>
                                        <div class="compare_txt left-side">
                                            <div class="textpannel">

                                                Xiaomi Redmi Note 10

                                            </div>

                                            <div class="textpannel ">

                                                Xiaomi Redmi Note 10 Pro

                                            </div>
                                        </div>
                                        <div class="compare_img_right ">
                                            <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >
                                        </div>
                                    </div>

                                </a>
                            </li>

                            <li>
                                <a href="#">

                                    <div class="box_1 ">
                                        <div class="vs">vs</div>

                                        <div class="compare_img left_side">
                                            <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >
                                        </div>
                                        <div class="compare_txt left-side">
                                            <div class="textpannel">

                                                Xiaomi Redmi Note 10

                                            </div>

                                            <div class="textpannel ">

                                                Xiaomi Redmi Note 10 Pro

                                            </div>
                                        </div>
                                        <div class="compare_img_right ">
                                            <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >
                                        </div>
                                    </div>

                                </a>
                            </li>

                        </ul>

                    </div>
                </div>
            </div>

            <div class="carosel">

            <div class="home_top_midle_first">

                <div class="row">
                    <div class="col products_wraper">
                        <div class="bbb_main_container">
                            <div class="bbb_viewed_title_container">
                                <h3 class="bbb_viewed_title">Latest and Upcomming mobiles</h3>
                                <div class="bbb_viewed_nav_container">
                                    <div class="bbb_viewed_nav bbb_viewed_prev"><i class="fas fa-chevron-left"></i></div>
                                    <div class="bbb_viewed_nav bbb_viewed_next"><i class="fas fa-chevron-right"></i></div>
                                </div>
                            </div>
                            <div class="clr"></div>
                            <div class="bbb_viewed_slider_container featured_mobile" >
                                <div class="owl-carousel owl-theme bbb_viewed_slider full_featured_row jcarousel_clip">

                                    <li class="mainContent innerContent jcarousel-item show_li innerContent_mob">
                                        <!--box1-->
                                        <div class="rating_box">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                        <span>
                                            <div class="hm_dil_img">
                                              <img class="product_image" src="{{ asset('themes/innolytic/image/realme-8-pro.jpg')}}">
                                            </div>
                                        </span>
                                        <div style="padding: 10px;">
                                            <div class="title_name">
                                                <a title="Realme 8 Pro" href="#">Realme 8 Pro</a>
                                            </div>
                                            <span class="pro_price">Rs. 17,999</span>
                                        </div>
                                        <div class="gray_btn">
                                            View Details
                                        </div>
                                    </li>

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">
                                        <!--box1-->
                                        <div class="rating_box">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                        <span>
                                            <div class="hm_dil_img">
                                              <img class="product_image" src="{{ asset('themes/innolytic/image/realme-8-pro.jpg')}}">
                                            </div>
                                        </span>
                                        <div style="padding: 10px;">
                                            <div class="title_name">
                                                <a title="Realme 8 Pro" href="#">Realme 8 Pro</a>
                                            </div>
                                            <span class="pro_price">Rs. 17,999</span>
                                        </div>
                                        <div class="gray_btn">
                                            View Details
                                        </div>
                                    </li>

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">
                                        <!--box1-->
                                        <div class="rating_box">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                        <span>
                                            <div class="hm_dil_img">
                                              <img class="product_image" src="{{ asset('themes/innolytic/image/realme-8-pro.jpg')}}">
                                            </div>
                                        </span>
                                        <div style="padding: 10px;">
                                            <div class="title_name">
                                                <a title="Realme 8 Pro" href="#">Realme 8 Pro</a>
                                            </div>
                                            <span class="pro_price">Rs. 17,999</span>
                                        </div>
                                        <div class="gray_btn">
                                            View Details
                                        </div>
                                    </li>

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">
                                        <!--box1-->
                                        <div class="rating_box">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                        <span>
                                            <div class="hm_dil_img">
                                              <img class="product_image" src="{{ asset('themes/innolytic/image/realme-8-pro.jpg')}}">
                                            </div>
                                        </span>
                                        <div style="padding: 10px;">
                                            <div class="title_name">
                                                <a title="Realme 8 Pro" href="#">Realme 8 Pro</a>
                                            </div>
                                            <span class="pro_price">Rs. 17,999</span>
                                        </div>
                                        <div class="gray_btn">
                                            View Details
                                        </div>
                                    </li>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="home_top_midle_second">

                <div class="row">
                    <div class="col products_wraper">
                        <div class="bbb_main_container">
                            <div class="bbb_viewed_title_container">
                                <h3 class="bbb_viewed_title">Featured Mobiles</h3>
                                <div class="bbb_viewed_nav_container">
                                    <div class="bbb_viewed_nav bbb_viewed_prev"><i class="fas fa-chevron-left"></i></div>
                                    <div class="bbb_viewed_nav bbb_viewed_next"><i class="fas fa-chevron-right"></i></div>
                                </div>
                            </div>
                            <div class="clr"></div>
                            <div class="bbb_viewed_slider_container featured_mobile" >
                                <div class="owl-carousel owl-theme bbb_viewed_slider full_featured_row jcarousel_clip">

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">
                                        <!--box1-->
                                        <div class="rating_box">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                        <span>
                                            <div class="hm_dil_img">
                                              <img class="product_image" src="{{ asset('themes/innolytic/image/realme-8-pro.jpg')}}">
                                            </div>
                                        </span>
                                        <div style="padding: 10px;">
                                            <div class="title_name">
                                                <a title="Realme 8 Pro" href="#">Realme 8 Pro</a>
                                            </div>
                                            <span class="pro_price">Rs. 17,999</span>
                                        </div>
                                        <div class="gray_btn">
                                            View Details
                                        </div>
                                    </li>

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">
                                        <!--box1-->
                                        <div class="rating_box">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                        <span>
                        <div class="hm_dil_img">
                          <img class="product_image" src="{{ asset('themes/innolytic/image/realme-8-pro.jpg')}}">
                        </div>
                      </span>
                                        <div style="padding: 10px;">
                                            <div class="title_name">
                                                <a title="Realme 8 Pro" href="#">Realme 8 Pro</a>
                                            </div>
                                            <span class="pro_price">Rs. 17,999</span>
                                        </div>
                                        <div class="gray_btn">
                                            View Details
                                        </div>
                                    </li>

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">
                                        <!--box1-->
                                        <div class="rating_box">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                        <span>
                        <div class="hm_dil_img">
                          <img class="product_image" src="{{ asset('themes/innolytic/image/realme-8-pro.jpg')}}">
                        </div>
                      </span>
                                        <div style="padding: 10px;">
                                            <div class="title_name">
                                                <a title="Realme 8 Pro" href="#">Realme 8 Pro</a>
                                            </div>
                                            <span class="pro_price">Rs. 17,999</span>
                                        </div>
                                        <div class="gray_btn">
                                            View Details
                                        </div>
                                    </li>

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">
                                        <!--box1-->
                                        <div class="rating_box">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                        <span>
                        <div class="hm_dil_img">
                          <img class="product_image" src="{{ asset('themes/innolytic/image/realme-8-pro.jpg')}}">
                        </div>
                      </span>
                                        <div style="padding: 10px;">
                                            <div class="title_name">
                                                <a title="Realme 8 Pro" href="#">Realme 8 Pro</a>
                                            </div>
                                            <span class="pro_price">Rs. 17,999</span>
                                        </div>
                                        <div class="gray_btn">
                                            View Details
                                        </div>
                                    </li>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="home_top_midle_third">

                <div class="row">
                    <div class="col products_wraper">
                        <div class="bbb_main_container">
                            <div class="bbb_viewed_title_container">
                                <h3 class="bbb_viewed_title">Popular mobiles</h3>
                                <div class="bbb_viewed_nav_container">
                                    <div class="bbb_viewed_nav bbb_viewed_prev"><i class="fas fa-chevron-left"></i></div>
                                    <div class="bbb_viewed_nav bbb_viewed_next"><i class="fas fa-chevron-right"></i></div>
                                </div>
                            </div>
                            <div class="clr"></div>
                            <div class="bbb_viewed_slider_container featured_mobile" >
                                <div class="owl-carousel owl-theme bbb_viewed_slider full_featured_row jcarousel_clip">

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">
                                        <!--box1-->
                                        <div class="rating_box">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                        <span>
                        <div class="hm_dil_img">
                          <img class="product_image" src="{{ asset('themes/innolytic/image/realme-8-pro.jpg')}}">
                        </div>
                      </span>
                                        <div style="padding: 10px;">
                                            <div class="title_name">
                                                <a title="Realme 8 Pro" href="#">Realme 8 Pro</a>
                                            </div>
                                            <span class="pro_price">Rs. 17,999</span>
                                        </div>
                                        <div class="gray_btn">
                                            View Details
                                        </div>
                                    </li>

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">
                                        <!--box1-->
                                        <div class="rating_box">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                        <span>
                        <div class="hm_dil_img">
                          <img class="product_image" src="{{ asset('themes/innolytic/image/realme-8-pro.jpg')}}">
                        </div>
                      </span>
                                        <div style="padding: 10px;">
                                            <div class="title_name">
                                                <a title="Realme 8 Pro" href="#">Realme 8 Pro</a>
                                            </div>
                                            <span class="pro_price">Rs. 17,999</span>
                                        </div>
                                        <div class="gray_btn">
                                            View Details
                                        </div>
                                    </li>

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">
                                        <!--box1-->
                                        <div class="rating_box">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                        <span>
                        <div class="hm_dil_img">
                          <img class="product_image" src="{{ asset('themes/innolytic/image/realme-8-pro.jpg')}}">
                        </div>
                      </span>
                                        <div style="padding: 10px;">
                                            <div class="title_name">
                                                <a title="Realme 8 Pro" href="#">Realme 8 Pro</a>
                                            </div>
                                            <span class="pro_price">Rs. 17,999</span>
                                        </div>
                                        <div class="gray_btn">
                                            View Details
                                        </div>
                                    </li>

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">
                                        <!--box1-->
                                        <div class="rating_box">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                        <span>
                        <div class="hm_dil_img">
                          <img class="product_image" src="{{ asset('themes/innolytic/image/realme-8-pro.jpg')}}">
                        </div>
                      </span>
                                        <div style="padding: 10px;">
                                            <div class="title_name">
                                                <a title="Realme 8 Pro" href="#">Realme 8 Pro</a>
                                            </div>
                                            <span class="pro_price">Rs. 17,999</span>
                                        </div>
                                        <div class="gray_btn">
                                            View Details
                                        </div>
                                    </li>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="home_top_midle_fourth">

                <div class="row">
                    <div class="col products_wraper">
                        <div class="bbb_main_container">
                            <div class="bbb_viewed_title_container">
                                <h3 class="bbb_viewed_title">Latest News</h3>
                                <div class="bbb_viewed_nav_container">
                                    <div class="bbb_viewed_nav bbb_viewed_prev"><i class="fas fa-chevron-left"></i></div>
                                    <div class="bbb_viewed_nav bbb_viewed_next"><i class="fas fa-chevron-right"></i></div>
                                </div>
                            </div>
                            <div class="clr"></div>
                            <div class="bbb_viewed_slider_container featured_mobile" >
                                <div class="owl-carousel owl-theme bbb_viewed_slider full_featured_row jcarousel_clip">

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">

                              <span>
                                <div class="hm_dil_img">
                                  <img class="product_image"
                                       src="{{ asset('themes/innolytic/image/Samsung-Galaxy-Book-2020-1.jpg')}}">
                                </div>
                              </span>
                                        <div style="padding: 10px;">
                                    <span class="title_name">
                                      Samsung Galaxy Book Go support pages go live ahead of launch
                                    </span>
                                            <div style="height: 4px;width: 100%;"></div>
                                            <span class="desc">
                                      Samsung's official websites for the UK and Ireland have listed support pages for the Samsung Galaxy Book Go, hinting at an imminent launch of the device.
                                    </span>
                                        </div>

                                    </li>

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">

                                        <div class="back_img_place">
                                            <div class="hm_dil_img">
                                                <img class="product_image" src="{{ asset('themes/innolytic/image/samsung-galaxy-f62-image-feat-2.jpg')}}">
                                            </div>
                                        </div>
                                        <div style="padding: 10px;">
                                    <span class="title_name">
                                      Samsung Galaxy M32 4G battery revealed through DEKRA certification
                                    </span>
                                            <div style="height: 4px;width: 100%;"></div>
                                            <span class="desc">
                                      Samsung's official websites for the UK and Ireland have listed support pages for the Samsung Galaxy Book Go, hinting at an imminent launch of the device.
                                    </span>
                                        </div>

                                    </li>

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">

                                        <div class="back_img_place">
                                            <div class="hm_dil_img">
                                                <img class="product_image" src="{{ asset('themes/innolytic/image/realme-q3-pro-image-feat.jpg')}}">
                                            </div>
                                        </div>
                                        <div style="padding: 10px;">
                                    <span class="title_name">
                                      Samsung Galaxy Book Go support pages go live ahead of launch
                                    </span>
                                            <div style="height: 4px;width: 100%;"></div>
                                            <span class="desc">
                                      Samsung's official websites for the UK and Ireland have listed support pages for the Samsung Galaxy Book Go, hinting at an imminent launch of the device.
                                    </span>
                                        </div>

                                    </li>

                                    <li class=" mainContent innerContent jcarousel-item show_li innerContent_mob">
                                        <!--box4-->

                                        <div class="back_img_place">
                                            <div class="hm_dil_img">
                                                <img class="product_image" src="{{ asset('themes/innolytic/image/redmi-note-10s-image-feat.jpg')}}">
                                            </div>
                                        </div>
                                        <div style="padding: 10px;">
                                    <span class="title_name">
                                      Samsung Galaxy M32 4G battery revealed through DEKRA certification
                                    </span>
                                            <div style="height: 4px;width: 100%;"></div>
                                            <span class="desc">
                                      Samsung's official websites for the UK and Ireland have listed support pages for the Samsung Galaxy Book Go, hinting at an imminent launch of the device.
                                    </span>
                                        </div>

                                    </li>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            </div>
            <!-- comparisions -->

{{--            <div class="products_wraper" style="">--}}
{{--                <div class="compare_list">--}}
{{--                    <div class="home_eidget">--}}
{{--                        <div class="tabs">--}}
{{--                            <div class="main_heading">--}}
{{--                                <h2>Popular Comparisions</h2>--}}
{{--                            </div>--}}
{{--                            <div class="clr"></div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="clr"></div>--}}

{{--                    <div class="inner_pro tab-content current">--}}
{{--                        <div class="topcompare compare_in">--}}
{{--                            <div class="compare_content">--}}

{{--                                <div class="pro_compare">--}}

{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}

{{--                                    <!-- product 2-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 3-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 4-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 5-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 6-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 7-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 8-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 9-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 10-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                </div>--}}

{{--                                <div class="pro_compare">--}}

{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}

{{--                                    <!-- product 2-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 3-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 4-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 5-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 6-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 7-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 8-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 9-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                    <!-- product 10-->--}}
{{--                                    <div class="product_name">--}}
{{--                                        <a href="#">--}}

{{--                                            <div class="box_1 ">--}}
{{--                                                <div class="vs">vs</div>--}}

{{--                                                <div class="compare_img left_side">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_txt left-side">--}}
{{--                                                    <div class="textpannel">--}}

{{--                                                        Xiaomi Redmi Note 10--}}

{{--                                                    </div>--}}

{{--                                                    <div class="textpannel ">--}}

{{--                                                        Xiaomi Redmi Note 10 Pro--}}

{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                                <div class="compare_img_right ">--}}
{{--                                                    <img src="{{ asset('themes/innolytic/image/compare-maker.jpg')}}" alt="" >--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

{{--                                        </a>--}}
{{--                                    </div>--}}


{{--                                </div>--}}

{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}



        </div>
    </div>

@endsection

@section('javascript')
    <script type="text/javascript" src="{{ asset('themes/innolytic/js/required.js') }}"></script>
    <script>
        // Trigger

        $(function () {

            var $range = $(".js-range-slider"),
                $inputFrom = $(".js-input-from"),
                $inputTo = $(".js-input-to"),
                instance,
                min = 0,
                max = 100000,
                from = 0,
                to = 0;

            $range.ionRangeSlider({
                type: "double",
                min: min,
                max: max,
                from: 0,
                to: 100000,
                prefix: '',
                onStart: updateInputs,
                onChange: updateInputs,
                step: 500,
                prettify_enabled: true,
                prettify_separator: ".",
                values_separator: " - ",
                force_edges: true


            });

            instance = $range.data("ionRangeSlider");

            function updateInputs (data) {
                from = data.from;
                to = data.to;

                $inputFrom.prop("value", from);
                $inputTo.prop("value", to);
            }

            $inputFrom.on("input", function () {
                var val = $(this).prop("value");

                // validate
                if (val < min) {
                    val = min;
                } else if (val > to) {
                    val = to;
                }

                instance.update({
                    from: val
                });
            });

            $inputTo.on("input", function () {
                var val = $(this).prop("value");

                // validate
                if (val < from) {
                    val = from;
                } else if (val > max) {
                    val = max;
                }

                instance.update({
                    to: val
                });
            });


        });

    </script>
@endsection


