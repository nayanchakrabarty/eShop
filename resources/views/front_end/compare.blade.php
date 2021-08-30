@extends('layouts.home')

@section('content')
<div class="outer_wrap content_wrap">
        <div class="content_wrap_inner">
            <div class="home_top_panel">
                <div class="compare_table1 home">
                    <div class="compare_row compare_head_wrap">

                        <div class="block compare_nav device_block first_header">
                            <div class="sidebar_head">
                                Compare By :
                            </div>
                            <ul class="compare_attr">
                                <li class="dropdown">
                                    <a href="#">Jump to</a>
                                </li>
                                <li class="nodropdown">
                                    <a href="#">Price List</a>
                                </li>
                                <li class="nodropdown">
                                    <a href="#">Reviews</a>
                                </li>
                            </ul>
                        </div>

                        @if (!empty(Request::get('c1')))
                        <div class="block device_block" id="suggest1">
                            <div class="device_header">
                                <a class="device_title" href="">{{optional($c1Mobile)->title}}</a>
                                <span class="cross" data-column="c1">X</span>

                            </div>
                            <div class="block block_info">
                                <a href="#">
                                    <img class="mob_img" src="{{ asset('themes/innolytic/image/realme8pro.jpg') }}">
                                </a>
                                <div class="right">
                                    <p>
										<span class="prices">
											<span class="rupee">Rs.</span>
											{{optional($c1Mobile)->price}}
										</span>
                                    </p>
                                    <p>
                                        <a href="#">
                                            <img class="store_img" src="{{ asset('themes/innolytic/image/happi.jpg') }}">
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        @else

                        <div class="block compare_search device_block" id="compare_src1">
                            <div class="add_search" style="display: block;">
                                <div id="search-area">
                                    <div class="search-box">
                                        <div class="input-field second-wrap typeahead__container">
                                            <div class="typeahead__query">
                                                <input id="search-input-compare1" class="typeahead" type="text" aria-label="search"
                                                       autocomplete="off"
                                                       placeholder="Search Mobiles"/>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>

                            <div class="block block_info">

                                <img class="mob_img" alt="" src="{{ asset('themes/innolytic/image/M12.jpg') }}">
                                <div class="right ttl_search">
                                    Samsung Galaxy M12
                                    <p>
                                        <span class="prices">
                                            <span class="rupee">Rs.</span>
                                            17,999
                                        </span>
                                    </p>

                                </div>
                                <p>
                                    <a class="btn_com" href="#">+ Compare</a>
                                </p>
                            </div>
                        </div>
                        @endif

                        @if (!empty(Request::get('c2')))
                            <div class="block device_block" id="suggest2">
                                <div class="device_header">
                                    <a class="device_title" href="">{{optional($c2Mobile)->title}}</a>
                                    <span class="cross" data-column="c2">X</span>

                                </div>
                                <div class="block block_info">
                                    <a href="#">
                                        <img class="mob_img" src="{{ asset('themes/innolytic/image/realme8pro.jpg') }}">
                                    </a>
                                    <div class="right">
                                        <p>
										<span class="prices">
											<span class="rupee">Rs.</span>
											{{optional($c2Mobile)->price}}
										</span>
                                        </p>
                                        <p>
                                            <a href="#">
                                                <img class="store_img" src="{{ asset('themes/innolytic/image/happi.jpg') }}">
                                            </a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        @else
                        <div class="block compare_search device_block" id="compare_src2">
                            <div class="add_search" style="display: block;">
                                <div id="search-area">
                                    <div class="search-box">
                                        <div class="input-field second-wrap typeahead__container">
                                            <div class="typeahead__query">
                                                <input id="search-input-compare2" class="typeahead" type="text" aria-label="search"
                                                       autocomplete="off"
                                                       placeholder="Search Mobiles"/>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="block block_info">

                                <img class="mob_img" alt="" src="{{ asset('themes/innolytic/image/M12.jpg') }}">
                                <div class="right ttl_search">
                                    Samsung Galaxy M12
                                    <p>
                                        <span class="prices">
                                            <span class="rupee">Rs.</span>
                                            17,999
                                        </span>
                                    </p>

                                </div>
                                <p>
                                    <a class="btn_com" href="#">+ Compare</a>
                                </p>
                            </div>
                        </div>
                        @endif

                        @if (!empty(Request::get('c3')))
                            <div class="block device_block" id="suggest3">
                                <div class="device_header">
                                    <a class="device_title" href="">{{optional($c3Mobile)->title}}</a>
                                    <span class="cross" data-column="c1">X</span>

                                </div>
                                <div class="block block_info">
                                    <a href="#">
                                        <img class="mob_img" src="{{ asset('themes/innolytic/image/realme8pro.jpg') }}">
                                    </a>
                                    <div class="right">
                                        <p>
										<span class="prices">
											<span class="rupee">Rs.</span>
											{{optional($c3Mobile)->price}}
										</span>
                                        </p>
                                        <p>
                                            <a href="#">
                                                <img class="store_img" src="{{ asset('themes/innolytic/image/happi.jpg') }}">
                                            </a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        @else
                        <div class="block compare_search device_block" id="compare_src3">
                            <div class="add_search" style="display: block;">
                                <div id="search-area">
                                    <div class="search-box">
                                        <div class="input-field second-wrap typeahead__container">
                                            <div class="typeahead__query">
                                                <input id="search-input-compare3" class="typeahead" type="text" aria-label="search"
                                                       autocomplete="off"
                                                       placeholder="Search Mobiles"/>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="block block_info">

                                <img class="mob_img" alt="" src="{{ asset('themes/innolytic/image/M12.jpg') }}">
                                <div class="right ttl_search">
                                    Samsung Galaxy M12
                                    <p>
                                        <span class="prices">
                                            <span class="rupee">Rs.</span>
                                            17,999
                                        </span>
                                    </p>

                                </div>
                                <p>
                                    <a class="btn_com" href="#">+ Compare</a>
                                </p>
                            </div>
                        </div>
                        @endif

                        @if (!empty(Request::get('c4')))
                            <div class="block device_block" id="suggest4">
                                <div class="device_header">
                                    <a class="device_title" href="">{{optional($c4Mobile)->title}}</a>
                                    <span class="cross" data-column="c4">X</span>

                                </div>
                                <div class="block block_info">
                                    <a href="#">
                                        <img class="mob_img" src="{{ asset('themes/innolytic/image/realme8pro.jpg') }}">
                                    </a>
                                    <div class="right">
                                        <p>
										<span class="prices">
											<span class="rupee">Rs.</span>
											{{optional($c4Mobile)->price}}
										</span>
                                        </p>
                                        <p>
                                            <a href="#">
                                                <img class="store_img" src="{{ asset('themes/innolytic/image/happi.jpg') }}">
                                            </a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        @else
                        <div class="block compare_search device_block" id="compare_src4">
                            <div class="add_search" style="display: block;">
                                <div id="search-area">
                                    <div class="search-box">
                                        <div class="input-field second-wrap typeahead__container">
                                            <div class="typeahead__query">
                                                <input id="search-input-compare4" class="typeahead" type="text" aria-label="search"
                                                       autocomplete="off"
                                                       placeholder="Search Mobiles"/>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="block block_info">

                                <img class="mob_img" alt="" src="{{ asset('themes/innolytic/image/M12.jpg') }}">
                                <div class="right ttl_search">
                                    Samsung Galaxy M12
                                    <p>
                                        <span class="prices">
                                            <span class="rupee">Rs.</span>
                                            17,999
                                        </span>
                                    </p>

                                </div>
                                <p>
                                    <a class="btn_com" href="#">+ Compare</a>
                                </p>
                            </div>
                        </div>
                        @endif

                    </div>

                </div>

                <!-- Summary -->
                <div class="compare_info_wrapper">

                    <div class="compare_info compare_block">
                        <table class="head_table" width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr class="table_first_row">
                                <th>
                                    <div class="collapse_title">
                                        <i class="fa fa-minus icon"></i>
                                        Summary
                                        <div class="clickable"></div>
                                    </div>
                                </th>
                                <td class="text2">
                                    <div class="rank_rating">
                                        <!--box1-->
                                        <div class="rating_box_compare">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td class="text2">
                                    <div class="rank_rating">
                                        <!--box1-->
                                        <div class="rating_box_compare">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td class="text2">
                                    <div class="rank_rating">
                                        <!--box1-->
                                        <div class="rating_box_compare">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td class="text2">
                                    <div class="rank_rating">
                                        <!--box1-->
                                        <div class="rating_box_compare">
                                            <div>
                                                86%
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="content_table">
                            <table class="" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                <tr class="common_text">
                                    <th valign="middle" >Display</th>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{ optional($c1Mobile)->dimensions }}</span>
                                                <p class="subtext">1080X2400 px, 411 PPI</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>6.4" (16.26 cm)</span>
                                                <p class="subtext">1080X2400 px, 411 PPI</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>6.4" (16.26 cm)</span>
                                                <p class="subtext">1080X2400 px, 411 PPI</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>6.4" (16.26 cm)</span>
                                                <p class="subtext">1080X2400 px, 411 PPI</p>
                                            </div>
                                        </div>
                                    </td>
                                </tr>

                                <!-- 2 -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">Camera</th>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c1Mobile)->main_camera}} </span>
                                                <p class="subtext">{{optional($c1Mobile)->selfie_camera}}</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c2Mobile)->main_camera}} </span>
                                                <p class="subtext">{{optional($c2Mobile)->selfie_camera}}</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c3Mobile)->main_camera}} </span>
                                                <p class="subtext">{{optional($c3Mobile)->selfie_camera}}</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c4Mobile)->main_camera}} </span>
                                                <p class="subtext">{{optional($c4Mobile)->selfie_camera}}</p>
                                            </div>
                                        </div>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Battery</th>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c1Mobile)->battery}}</span>

                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c2Mobile)->battery}}</span>

                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c3Mobile)->battery}}</span>

                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c4Mobile)->battery}}</span>

                                            </div>
                                        </div>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Performance</th>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c1Mobile)->cpu}}</span>
                                                <p class="subtext">{{optional($c1Mobile)->chipset}}, {{optional($c1Mobile)->ram}}</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c2Mobile)->cpu}}</span>
                                                <p class="subtext">{{optional($c2Mobile)->chipset}}, {{optional($c2Mobile)->ram}} </p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c3Mobile)->cpu}}</span>
                                                <p class="subtext">{{optional($c3Mobile)->chipset}}, {{optional($c3Mobile)->ram}} </p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c4Mobile)->cpu}}</span>
                                                <p class="subtext">{{optional($c4Mobile)->chipset}}, {{optional($c4Mobile)->ram}} </p>
                                            </div>
                                        </div>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Storage</th>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c1Mobile)->storage}}</span>
                                                <p class="subtext">{{optional($c1Mobile)->card_slot}}</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c2Mobile)->storage}}</span>
                                                <p class="subtext">{{optional($c2Mobile)->card_slot}}</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c3Mobile)->storage}}</span>
                                                <p class="subtext">{{optional($c3Mobile)->card_slot}}</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <span>{{optional($c4Mobile)->storage}}</span>
                                                <p class="subtext">{{optional($c4Mobile)->card_slot}}</p>
                                            </div>
                                        </div>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Expert Rating</th>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <div class="det_rating_stars">
                                                    ★★★★★
                                                    <div class="rating">★★★★★</div>
                                                </div>
                                                <p class="subtext">
                                                    <span class="view_all">Read Expert Review</span>
                                                </p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <div class="det_rating_stars">
                                                    ★★★★★
                                                    <div class="rating">★★★★★</div>
                                                </div>
                                                <p class="subtext">
                                                    <span class="view_all">Read Expert Review</span>
                                                </p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <div class="det_rating_stars">
                                                    ★★★★★
                                                    <div class="rating">★★★★★</div>
                                                </div>
                                                <p class="subtext">
                                                    <span class="view_all">Read Expert Review</span>
                                                </p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <div class="det_rating_stars">
                                                    ★★★★★
                                                    <div class="rating">★★★★★</div>
                                                </div>
                                                <p class="subtext">
                                                    <span class="view_all">Read Expert Review</span>
                                                </p>
                                            </div>
                                        </div>
                                    </td>

                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">User Rating</th>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <div class="det_rating_stars">
                                                    ★★★★★
                                                    <div class="rating">★★★★★</div>
                                                </div>
                                                <p class="subtext">5/5 based on 6,400 rating</p>
                                                <p class="subtext">
                                                    <span class="view_all">Read All User Review</span>
                                                </p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <div class="det_rating_stars">
                                                    ★★★★★
                                                    <div class="rating">★★★★★</div>
                                                </div>
                                                <p class="subtext">5/5 based on 6,400 rating</p>
                                                <p class="subtext">
                                                    <span class="view_all">Read All User Review</span>
                                                </p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <div class="det_rating_stars">
                                                    ★★★★★
                                                    <div class="rating">★★★★★</div>
                                                </div>
                                                <p class="subtext">5/5 based on 6,400 rating</p>
                                                <p class="subtext">
                                                    <span class="view_all">Read All User Review</span>
                                                </p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <div class="inner_text">
                                            <div class="details">
                                                <div class="det_rating_stars">
                                                    ★★★★★
                                                    <div class="rating">★★★★★</div>
                                                </div>
                                                <p class="subtext">5/5 based on 6,400 rating</p>
                                                <p class="subtext">
                                                    <span class="view_all">Read All User Review</span>
                                                </p>
                                            </div>
                                        </div>
                                    </td>

                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Best Prices</th>
                                    <td class="text" valign="top" align="left">
                                        <div class="best_price">
                                                <span class="bst_prc">
                                                    <span class="bstprc">Rs. 17999</span>
                                                    <span class="store_name">@happimo</span>
                                                    <span class="bst_buy_btn">
                                                        Buy
                                                    </span>
                                                </span>

                                        </div>
                                    </td>
                                    <td class="text" valign="top" align="left">
                                        <div class="best_price">
                                                <span class="bst_prc">
                                                    <span class="bstprc">Rs. 17999</span>
                                                    <span class="store_name">@happimo</span>
                                                    <span class="bst_buy_btn">
                                                        Buy
                                                    </span>
                                                </span>

                                        </div>
                                    </td>
                                    <td class="text" valign="top" align="left">
                                        <div class="best_price">
                                                <span class="bst_prc">
                                                    <span class="bstprc">Rs. 17999</span>
                                                    <span class="store_name">@happimo</span>
                                                    <span class="bst_buy_btn">
                                                        Buy
                                                    </span>
                                                </span>

                                        </div>
                                    </td>
                                    <td class="text" valign="top" align="left">
                                        <div class="best_price">
                                            <span class="bst_prc">
                                                <span class="bstprc">Rs. 17999</span>
                                                <span class="store_name">@happimo</span>
                                                <span class="bst_buy_btn">
                                                    Buy
                                                </span>
                                            </span>

                                        </div>
                                    </td>

                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- general -->

                    <div class="compare_info compare_block">
                        <table class="head_table" width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr class="table_first_row">
                                <th>
                                    <div class="collapse_title">
                                        <i class="fa fa-minus icon"></i>
                                        General
                                        <div class="clickable"></div>
                                    </div>
                                </th>
                                <td class="text2">
                                    <span class="sprite general-os android">
                                    </span>
                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="content_table">
                            <table class="" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                <tr class="common_text">
                                    <th valign="middle" align="center">Launch Date</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->announced}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->announced}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->announced}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->announced}}</p>
                                    </td>
                                </tr>

                                <!-- 2 -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">Operating System</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->os}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->os}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->os}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->os}}</p>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Custom UI</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>Realme UI </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Performance -->

                    <div class="compare_info compare_block">
                        <table class="head_table" width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr class="table_first_row">
                                <th>
                                    <div class="collapse_title">
                                        <i class="fa fa-minus icon"></i>
                                        Performance
                                        <div class="clickable"></div>
                                    </div>
                                </th>
                                <td class="text2">
                                    <div class="performance_head">
                                        <span class="sprite performance verygood"></span>
                                        <div>Very Good</div>
                                    </div>

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="content_table">
                            <table class="" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                <tr class="common_text">
                                    <th valign="middle" align="center">Chipset</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->chipset}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->chipset}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->chipset}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->chipset}}</p>
                                    </td>
                                </tr>

                                <!-- 2 -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">Cpu</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->cpu}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->cpu}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->cpu}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->cpu}}</p>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Architecture</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>64 bit</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Fabrication</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>8 nm</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <!-- 5 -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">Graphics</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>Adreno 618</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">RAM</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->ram}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->ram}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->ram}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->ram}}</p>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">RAM Type</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>LPDDR4X</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Display -->

                    <div class="compare_info compare_block">
                        <table class="head_table" width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr class="table_first_row">
                                <th>
                                    <div class="collapse_title">
                                        <i class="fa fa-minus icon"></i>
                                        Display
                                        <div class="clickable"></div>
                                    </div>
                                </th>
                                <td class="text2">
                                    <div class="performance_head">
                                        <span class="sprite display verygood"></span>
                                        <div>Very Good</div>
                                    </div>
                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="content_table">
                            <table class="" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                <tr class="common_text">
                                    <th valign="middle" align="center">Display Type</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->type}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->type}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->type}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->type}}</p>
                                    </td>
                                </tr>

                                <!-- 2 -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">Screen Size</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->dimentions}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->dimentions}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->dimentions}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->dimentions}}</p>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Resolution</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->resolution}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->resolution}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->resolution}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->resolution}}</p>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Aspect Ratio</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>20:9</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <!-- 5 -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">Pixel Density</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->pixel_density}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->pixel_density}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->pixel_density}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->pixel_density}}</p>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Screen to Body Ratio (calculated)</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>83.32 %</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Bezel-less display</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>
                                            <span class="Stylus_check"></span>
                                            with punch-hole display
                                        </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Touch Screen</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>
                                            <span class="Stylus_check"></span>
                                            , Capacitive Touchscreen, Multi-touch
                                        </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>



                                <tr class="common_text">
                                    <th valign="middle" align="center">Brightness</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>1000 nits</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Refresh Rate</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->hz_refresh_rate}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->hz_refresh_rate}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->hz_refresh_rate}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->hz_refresh_rate}}</p>
                                    </td>
                                </tr>


                                <tr class="common_text">
                                    <th valign="middle" align="center">Screen to Body Ratio (claimed by the brand)</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>90.8%</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Design -->

                    <div class="compare_info compare_block">
                        <table class="head_table" width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr class="table_first_row">
                                <th>
                                    <div class="collapse_title">
                                        <i class="fa fa-minus icon"></i>
                                        Design
                                        <div class="clickable"></div>
                                    </div>
                                </th>
                                <td class="text2">
                                    <div class="compSize">
                                        <span class="compSizeImg"></span>
                                        Size Compare
                                    </div>
                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="content_table">
                            <table class="" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                <tr class="common_text">
                                    <th valign="middle" align="center">Dimensions</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->dimensions}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->dimensions}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->dimensions}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->dimensions}}</p>
                                    </td>
                                </tr>

                                <!-- 2 -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">Weight</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->weight}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->weight}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->weight}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->weight}}</p>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Build Material</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>Back: Plastic</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Colours</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->colors}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->colors}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->colors}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->colors}}</p>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!--Camera-->

                    <div class="compare_info compare_block">
                        <table class="head_table" width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr class="table_first_row">
                                <th>
                                    <div class="collapse_title">
                                        <i class="fa fa-minus icon"></i>
                                        Camera
                                        <div class="clickable"></div>
                                    </div>
                                </th>
                                <td class="text2">
                                    <div class="performance_head">
                                        <span class="sprite camera verygood"></span>
                                        <div>Very Good</div>
                                    </div>
                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <!--Main Camera-->

                    <div class="compare_info compare_block">
                        <table class="head_table" width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr class="table_first_row">
                                <th>
                                    <div class="collapse_title">
                                        <i class="fa fa-minus icon"></i>
                                        <span class="subtitle"> Main Camera</span>
                                        <div class="clickable"></div>
                                    </div>
                                </th>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="content_table">
                            <table class="" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                <tr class="common_text">
                                    <th valign="middle" align="center">Camera Setup</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->main_camera}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->main_camera}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->main_camera}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->main_camera}}</p>
                                    </td>
                                </tr>

                                <!-- empty -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">Resolution</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>6.4 " (16.26 cm)</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Sensor</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>ISOCELL Plus</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Autofocus</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>
                                            <span class="Stylus_check"></span>
                                            ,Phase Detection autofocus
                                        </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <!-- 5 -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">Flash</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->mc_features}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->mc_features}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->mc_features}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->mc_features}}</p>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Image Resolution</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>12000 x 9000 Pixels</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Settings</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>Exposure compensation, ISO control</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Shooting Modes</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>Continuos Shooting High Dynamic Range mode (HDR)</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>



                                <tr class="common_text">
                                    <th valign="middle" align="center">Camera Features</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>20 x Digital Zoom Auto Flash Face detection Touch to focus</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Video Recording</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->mc_video}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->mc_video}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->mc_video}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->mc_video}}</p>
                                    </td>
                                </tr>


                                <tr class="common_text">
                                    <th valign="middle" align="center">Video Recording Features</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>Dual Video Recording </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Front Camera -->

                    <div class="compare_info compare_block">
                        <table class="head_table" width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr class="table_first_row">
                                <th>
                                    <div class="collapse_title">
                                        <i class="fa fa-minus icon"></i>
                                        <span class="subtitle">Front Camera</span>
                                        <div class="clickable"></div>
                                    </div>
                                </th>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="content_table">
                            <table class="" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                <tr class="common_text">
                                    <th valign="middle" align="center">Camera Setup</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->sc_camera}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->sc_camera}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->sc_camera}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->sc_camera}}</p>
                                    </td>
                                </tr>

                                <!-- 2 -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">Resolution</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>16 MP f/2.45, Wide Angle Primary Camera</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Sensor</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>Exmor RS</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Flash</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->sc_features}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->sc_features}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->sc_features}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->sc_features}}</p>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Video Recording</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->sc_video}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->sc_video}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->sc_video}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->sc_video}}</p>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!--Battery-->

                    <div class="compare_info compare_block">
                        <table class="head_table" width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr class="table_first_row">
                                <th>
                                    <div class="collapse_title">
                                        <i class="fa fa-minus icon"></i>
                                        Battery
                                        <div class="clickable"></div>
                                    </div>
                                </th>
                                <td class="text2">
                                    <div class="performance_head">
                                        <span class="sprite battery verygood"></span>
                                        <div>Very Good</div>
                                    </div>
                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="content_table">
                            <table class="" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                <tr class="common_text">
                                    <th valign="middle" align="center">Capacity</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->battery}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->battery}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->battery}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->battery}}</p>
                                    </td>
                                </tr>

                                <!-- 2 -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">Type</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>Li-ion</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Removable</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>No</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Quick Charging</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>
                                            <span class="Stylus_check"></span>
                                            , Super Dart, 50W: 100 % in 47 minutes
                                        </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">USB Type-C</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>
                                            <span class="Stylus_check"></span>
                                        </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Storage -->

                    <div class="compare_info compare_block">
                        <table class="head_table" width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr class="table_first_row">
                                <th>
                                    <div class="collapse_title">
                                        <i class="fa fa-minus icon"></i>
                                        Storage
                                        <div class="clickable"></div>
                                    </div>
                                </th>
                                <td class="text2">
                                    <div class="performance_head">
                                        <span class="sprite storage best_in_class"></span>
                                        <div>Best in Class</div>
                                    </div>
                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="content_table">
                            <table class="" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                <tr class="common_text">
                                    <th valign="middle" align="center">Internal Memory</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->storage}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->storage}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->storage}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->storage}}</p>
                                    </td>
                                </tr>

                                <!-- 2 -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">Expandable Memory</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->card_slot}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->card_slot}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->card_slot}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->card_slot}}</p>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">User Available Storage</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>Up to 110 GB</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">SStorage Type</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>UFS 2.1</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">USG OTG</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>
                                            <span class="Stylus_check"></span>
                                        </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Network -->

                    <div class="compare_info compare_block">
                        <table class="head_table" width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr class="table_first_row">
                                <th>
                                    <div class="collapse_title">
                                        <i class="fa fa-minus icon"></i>
                                        Network & Connectivity
                                        <div class="clickable"></div>
                                    </div>
                                </th>
                                <td class="text2">
                                    <span class="sprite connectivity"></span>
                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="content_table">
                            <table class="" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                <tr class="common_text">
                                    <th valign="middle" align="center">SIM Slot(s)</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->sim}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->sim}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->sim}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->sim}}</p>
                                    </td>
                                </tr>

                                <!-- empty -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">SIM Size</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>SIM1: Nano SIM2: Nano</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Network Support</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->technology}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->technology}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->technology}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->technology}}</p>
                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">VoLTE</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>
                                            <span class="Stylus_check"></span>
                                        </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <!-- 5 --><!--empty-->

                                <tr class="common_text">
                                    <th valign="middle" align="center">SIM1</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>, LED Flash </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">SIM2</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>12000 x 9000 Pixels</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">SAR Value</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>Head: 1.098 W/kg, Body: 0.531 W/kg</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Wi-Fi</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>
                                                <span class="Stylus_check">
                                                </span>
                                            , Wi-Fi 802.11, a/ac/b/g/n, MIMO
                                        </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>



                                <tr class="common_text">
                                    <th valign="middle" align="center">Wi-Fi Features</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>
                                            Mobile Hotspot
                                        </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Bluetooth</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>
                                            <span class="Stylus_check"></span>
                                            , v5.0
                                        </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>


                                <tr class="common_text">
                                    <th valign="middle" align="center">GPS</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>
                                            <span class="Stylus_check"></span>
                                            with A-GPS, Glonass
                                        </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">NFC</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c1Mobile)->nfc}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c2Mobile)->nfc}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c3Mobile)->nfc}}</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">
                                        <p>{{optional($c4Mobile)->nfc}}</p>
                                    </td>
                                </tr>


                                <tr class="common_text">
                                    <th valign="middle" align="center">USB Connectivity</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>Mass storage device, USB charging</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Multimedia -->

                    <div class="compare_info compare_block">
                        <table class="head_table" width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr class="table_first_row">
                                <th>
                                    <div class="collapse_title">
                                        <i class="fa fa-minus icon"></i>
                                        Multimedia
                                        <div class="clickable"></div>
                                    </div>
                                </th>
                                <td class="text2">
                                    <span class="sprite multimedia android"></span>
                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="content_table">
                            <table class="" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                <tr class="common_text">
                                    <th valign="middle" align="center">loudspeaker</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>
                                            <span class="Stylus_check"></span>
                                        </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <!-- 2 -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">Audio Jack</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>3.5 mm</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Sensors -->

                    <div class="compare_info compare_block">
                        <table class="head_table" width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr class="table_first_row">
                                <th>
                                    <div class="collapse_title">
                                        <i class="fa fa-minus icon"></i>
                                        Sensors
                                        <div class="clickable"></div>
                                    </div>
                                </th>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="content_table">
                            <table class="" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                <tr class="common_text">
                                    <th valign="middle" align="center">Fingerprint Sensor</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>
                                            <span class="Stylus_check"></span>
                                        </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <!-- 2 -->

                                <tr class="common_text">
                                    <th valign="middle" align="center">Fingerprint Sensor Position</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>On-screen</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Fingerprint Sensor Type</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>Optical</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center">Other Sensors</th>
                                    <td class="text" valign="middle" align="left">
                                        <p>Light sensor, Proximity sensor, Accelerometer, Gyroscope</p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Price List -->

                    <div class="compare_info compare_block">
                        <table class="head_table" width="100%" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr class="table_first_row">
                                <th>
                                    <div class="collapse_title">
                                        <i class="fa fa-minus icon"></i>
                                        Price List
                                        <div class="clickable"></div>
                                    </div>
                                </th>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                                <td class="text2">

                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="content_table">
                            <table class="" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                <tr class="common_text">
                                    <th valign="middle" align="center"></th>
                                    <td class="text" valign="middle" align="left">
                                        <p></p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <!-- 2 -->

                                <tr class="common_text">
                                    <th valign="middle" align="center"></th>
                                    <td class="text" valign="middle" align="left">
                                        <p></p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                <tr class="common_text">
                                    <th valign="middle" align="center"></th>
                                    <td class="text" valign="middle" align="left">
                                        <p> </p>
                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                    <td class="text" valign="middle" align="left">

                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
@endsection

@section('javascript')
    <script>
        $(document).ready(function() {
            let searchInputCompare1Obj = $('#search-input-compare1');
            let searchInputCompare2Obj = $('#search-input-compare2');
            let searchInputCompare3Obj = $('#search-input-compare3');
            let searchInputCompare4Obj = $('#search-input-compare4');

            $.urlParam = function(name){
                var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
                if (results==null) {
                    return null;
                }
                return decodeURI(results[1]) || 0;
            }

            $(".cross").on("click", function (){
                let column = $(this).data('column');
                let url = new URL(location.href);
                if (column === 'c1') {
                    url.searchParams.delete('c1');
                } else if (column === 'c2') {
                    url.searchParams.delete('c2');
                } else if (column === 'c3') {
                    url.searchParams.delete('c3');
                } else if (column === 'c4') {
                    url.searchParams.delete('c4');
                }
                location.href = url;
            });

            searchInputCompare1Obj.typeahead({
                minLength: 1,
                maxItem: 0,
                dynamic: true,
                hint: true,
                template: function (query, item) {
                    return `{!! view('front_end.mobile_list_item1') !!}`;
                },
                emptyTemplate: "No results found for <b>@{{query}}</b>",
                source: {
                    mobiles: {
                        display: ["title"],
                        href: "@{{href}}",
                        templateValue: "@{{title}}",
                        ajax: function (query) {
                            return {
                                type: "GET",
                                url: '{{ route('mobiles.searchList') }}',
                                path: "data.mobiles",
                                data: {
                                    q: query,
                                    field: 'c1',
                                    c1: $.urlParam('c1'),
                                    c2: $.urlParam('c2'),
                                    c3: $.urlParam('c3'),
                                    c4: $.urlParam('c4')
                                },
                                callback: {
                                    done: function (data, textStatus, jqXHR) {
                                        // Perform operations on received data...
                                        // IMPORTANT: data has to be returned if this callback is used
                                        return data;
                                    },
                                    fail: function (jqXHR, textStatus, errorThrown) {
                                    },
                                    always: function (data, textStatus, jqXHR) {
                                    },
                                    then: function (jqXHR, textStatus) {
                                    }
                                }
                            }
                        }
                    }
                }
            });


            searchInputCompare2Obj.typeahead({
                minLength: 1,
                maxItem: 0,
                dynamic: true,
                hint: true,
                template: function (query, item) {
                    return `{!! view('front_end.mobile_list_item1') !!}`;
                },
                emptyTemplate: "No results found for <b>@{{query}}</b>",
                source: {
                    mobiles: {
                        display: ["title"],
                        href: "@{{href}}",
                        templateValue: "@{{title}}",
                        ajax: function (query) {
                            return {
                                type: "GET",
                                url: '{{ route('mobiles.searchList') }}',
                                path: "data.mobiles",
                                data: {
                                    q: query,
                                    field: 'c2',
                                    c1: $.urlParam('c1'),
                                    c2: $.urlParam('c2'),
                                    c3: $.urlParam('c3'),
                                    c4: $.urlParam('c4')
                                },
                                callback: {
                                    done: function (data, textStatus, jqXHR) {
                                        // Perform operations on received data...
                                        // IMPORTANT: data has to be returned if this callback is used
                                        //alert(22)
                                        return data;
                                    },
                                    fail: function (jqXHR, textStatus, errorThrown) {
                                    },
                                    always: function (data, textStatus, jqXHR) {
                                    },
                                    then: function (jqXHR, textStatus) {
                                    }
                                }
                            }
                        }
                    }
                }
            });

            searchInputCompare3Obj.typeahead({
                minLength: 1,
                maxItem: 0,
                dynamic: true,
                hint: true,
                template: function (query, item) {
                    return `{!! view('front_end.mobile_list_item1') !!}`;
                },
                emptyTemplate: "No results found for <b>@{{query}}</b>",
                source: {
                    mobiles: {
                        display: ["title"],
                        href: "@{{href}}",
                        templateValue: "@{{title}}",
                        ajax: function (query) {
                            return {
                                type: "GET",
                                url: '{{ route('mobiles.searchList') }}',
                                path: "data.mobiles",
                                data: {
                                    q: query,
                                    field: 'c3',
                                    c1: $.urlParam('c1'),
                                    c2: $.urlParam('c2'),
                                    c3: $.urlParam('c3'),
                                    c4: $.urlParam('c4')
                                },
                                callback: {
                                    done: function (data, textStatus, jqXHR) {
                                        // Perform operations on received data...
                                        // IMPORTANT: data has to be returned if this callback is used
                                        //alert(33)
                                        return data;

                                    },
                                    fail: function (jqXHR, textStatus, errorThrown) {
                                    },
                                    always: function (data, textStatus, jqXHR) {
                                    },
                                    then: function (jqXHR, textStatus) {
                                    }
                                }
                            }
                        }
                    }
                }
            });

            searchInputCompare4Obj.typeahead({
                minLength: 1,
                maxItem: 0,
                dynamic: true,
                hint: true,
                template: function (query, item) {
                    return `{!! view('front_end.mobile_list_item1') !!}`;
                },
                emptyTemplate: "No results found for <b>@{{query}}</b>",
                source: {
                    mobiles: {
                        display: ["title"],
                        href: "@{{href}}",
                        templateValue: "@{{title}}",
                        ajax: function (query) {
                            return {
                                type: "GET",
                                url: '{{ route('mobiles.searchList') }}',
                                path: "data.mobiles",
                                data: {
                                    q: query,
                                    field: 'c4',
                                    c1: $.urlParam('c1'),
                                    c2: $.urlParam('c2'),
                                    c3: $.urlParam('c3'),
                                    c4: $.urlParam('c4')
                                },
                                callback: {
                                    done: function (data, textStatus, jqXHR) {
                                        // Perform operations on received data...
                                        // IMPORTANT: data has to be returned if this callback is used
                                        return data;
                                    },
                                    fail: function (jqXHR, textStatus, errorThrown) {
                                    },
                                    always: function (data, textStatus, jqXHR) {
                                    },
                                    then: function (jqXHR, textStatus) {
                                    }
                                }
                            }
                        }
                    }
                }
            });

        });
    </script>
@endsection

