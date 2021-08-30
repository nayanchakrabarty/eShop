@extends('layouts.home')

@section('css')
    <link rel="stylesheet" type="text/css" href="{{ asset('themes/innolytic/css/style.css') }}">
@endsection

@section('content')
<div class="outer_wrap content_wrap">
    <div class="content_wrap_inner">
        <div class="container_area">
            <div class="page_info">
                <div class="page_info_bredcumber">
                    <a href="#">Mobile Phones</a>
                    ›
                    <a href="#">Apple Mobile Phones</a>
                    › {{ $mobiles->title }} Price in India
                </div>
                <div class="page_info_update_date">
                    Update On:
                    <abbr title="">13th April 2021</abbr>
                </div>
            </div>
            <div>
                <div class="product_detail_ttl_container">
                    <h1 class="product_detail_ttl">{{ $mobiles->title }}</h1>
                    <span class="product_detail_ttl_brk">({{ $mobiles->storage }})</span>
                    <div class="product_detail_tolber">
                        <div class="product_detail_tolber_rating">
                            <span class="product_detail_tolber_item tolber_expert">
                                <span class="product_detail_tolber_score ">8.3</span>
                                Expert Score
                            </span>
                            <span class="product_detail_tolber_item tolbar_rating">
                                <span class="product_detail_tolber_score">4.6</span>
                                <span>67060</span> Rating
                             </span>
                            <a class="product_detail_tolber_item" href="#">Official Website</a>
                        </div>
                    </div>
                </div>
                <div class="product_detail_specf_wrpr">
        <span class="product_detail_specf">
          <span class="product_detail_specf_txt">
            <p>The <strong>iPhone 11</strong> comes with a <strong>6.1-inch</strong> IPS LCD Liquid Retina Display that bears a resolution of 828x1792pixels. The phone retains the glass-and-aluminum body construction as its predecessor, but its resistance against dust and water has improved, thanks to IP68 certification (up to 2 meters, for up to 30 minutes). The smartphone comes with <strong>iOS 13</strong> that runs on Apple s A13 Bionic processor paired with <strong>4GB of RAM</strong> and <strong>64GB</strong> of storage. Dual-SIM support is provided with one of the networks requiring an eSIM activation. For imaging, the phone offers dual rear cameras. The front houses a single <strong>12MP</strong> selfie camera along with Face ID sensors for <strong>3D facial recognition</strong>. The phone is backed by a <strong>3110mAh</strong> battery that charges over a Lightning port. It supports 18W fast charging over the USB Power Delivery 3.0 protocol. The upcoming Apple mobile phones you may want to watch out for are the <strong><a
                        href="#">Apple iPhone SE 2</a>, </strong><a href="#"><strong>iPhone 11 Pro</strong></a> and the <a
                    href="#"><strong>iPhone 11 Pro Max</strong></a>.</p>
          </span>
        </span>
                </div>

                <div class="sctn product_detail">
                    <div class="product_detail_left">
                        <div class="product_detail_img_wrpr">
                            <img id="featured" class="product_detail_img" src="{{ asset('themes/innolytic/image/15688-251-1.jpg') }}">
                        </div>
                        <div class="product_detail_tumnl_wrpr">
                            <div class="product_detail_tumnl active">
                                <img class="product_detail_tumnl_img" src="{{ asset('themes/innolytic/image/15688-251-1.jpg') }}" alt="">
                            </div>
                            <div class="product_detail_tumnl">
                                <img class="product_detail_tumnl_img" src="{{ asset('themes/innolytic/image/15688-251-2.jpg') }}" alt="">
                            </div>
                            <div class="product_detail_tumnl">
                                <img class="product_detail_tumnl_img" src="{{ asset('themes/innolytic/image/15688-251-3.jpg') }}" alt="">
                            </div>
                            <div class="product_detail_tumnl">
                                <img class="product_detail_tumnl_img" src="{{ asset('themes/innolytic/image/15688-251-4.jpg') }}" alt="">
                            </div>
                            <div class="product_detail_tumnl">
                                <img class="product_detail_tumnl_img" src="{{ asset('themes/innolytic/image/15688-251-5.jpg') }}" alt="">
                            </div>
{{--                            <div class="product_detail_tumnl product_detail_tumnl_video">--}}
{{--                                <img class="product_detail_tumnl_img" src="" alt="">--}}
{{--                                <span class="">Video</span>--}}
{{--                            </div>--}}
                        </div>
                    </div>
                    <div class="product_detail_right">
                        <div class="product_detail_container">
                            <div class="compare_div">
                                <div class="compare_product compare_pdt">
                                    <form action="#">
                                        <div class="compare_btn">
                                            <i class="fas fa-balance-scale-left"></i>
                                            <span>Compare</span>
                                        </div>

                                    </form>
                                </div>

                            </div>
                            <div id="compare_pdt_1" class="product_detail_prc">
                                <span class="product_detail_prc_lbl">Best Price: </span>
                                <span>₹ </span>
                                <span class="product_detail_prc_val">46,999</span>
                            </div>
                            <div class="product_detail_variant_wrpr">
                                <div class="product_detail_variant_item">
                                    <div class="product_detail_variant_hdr">
                                        <div class="product_detail_variant_ttl">VARIANTS</div>
                                    </div>
                                    <div class="available_sizes">
                                        <div class="available_siz_itm_wrpr available_siz_itm_wrpr_select">
                                            <span class="available_sizes_item">64 GB</span>
                                        </div>
                                        <div class="available_siz_itm_wrpr ">
                                            <span class="available_sizes_item">128 GB</span>
                                        </div>
                                        <div class="available_siz_itm_wrpr ">
                                            <span class="available_sizes_item">256 GB</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="store" class="prc_box product_table_card">
                                <div class="product_table_row_wrpr">
                                    <div class="product_table_row clearfix">
                                        <div class="product_table_logo">
                                            <img class="product_detail_store_icon" src="{{ asset('themes/innolytic/image/amazon_store.png') }}">
                                        </div>
                                        <div class="product_table_info">
                                            <div class="product_table_prc">₹51,999</div>
                                        </div>
                                        <div class="product_table_btn">
                                            <a class="btn btn_get product_table_get_btn" href="#">

                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="product_table_row_wrpr">
                                    <div class="product_table_row clearfix">
                                        <div class="product_table_logo">
                                            <img class="product_detail_store_icon" src="{{ asset('themes/innolytic/image/flipkart_store.png') }}">
                                        </div>
                                        <div class="product_table_info">
                                            <div class="product_table_prc">₹46,999</div>
                                        </div>
                                        <div class="product_table_btn">
                                            <a class="btn btn_get product_table_get_btn" href="#">

                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="product_table_row_wrpr">
                                    <div class="product_table_row clearfix">
                                        <div class="product_table_logo">
                                            <img class="product_detail_store_icon" src="{{ asset('themes/innolytic/image/happimobiles_store.png') }}">
                                        </div>
                                        <div class="product_table_info">
                                            <div class="product_table_prc">₹54,900</div>
                                        </div>
                                        <div class="product_table_btn">
                                            <a class="btn btn_get product_table_get_btn" href="#">

                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="product_table_row_wrpr">
                                    <div class="product_table_row clearfix">
                                        <div class="product_table_logo">
                                            <img class="product_detail_store_icon" src="{{ asset('themes/innolytic/image/tatacliq_store.png') }}">
                                        </div>
                                        <div class="product_table_info">
                                            <div class="product_table_prc">₹53,250</div>
                                        </div>
                                        <div class="product_table_btn">
                                            <a class="btn btn_get product_table_get_btn" href="#">

                                            </a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="product_detail_spcific ">
                                <h3 class="product_detail_spcific_hdr">
                                    Key Specifications
                                </h3>
                                <ul class="specific_list ">
                                    <li class="specific_item spec-cpu">
                                        <div class="icn">
                                            <i class="fas fa-microchip center"></i>
                                        </div>
                                        {{ $mobiles->chipset }}
                                    </li>
                                    <li class="specific_item spec-ram ">
                                        <div class="icn">
                                            <i class="fas fa-memory "></i>
                                        </div>
                                        {{ $mobiles->ram }} RAM
                                    </li>
                                    <li class="specific_item spec-int_stor">
                                        <div class="icn">
                                            <i class="fas fa-sd-card "></i>
                                        </div>
                                        {{ $mobiles->storage }} internal storage
                                    </li>
                                    <li class="specific_item spec-battery">
                                        <div class="icn">
                                            <i class="fa fa-battery-three-quarters "></i>
                                        </div>
                                        {{ $mobiles->battery_filter }} mAh battery
                                    </li>


                                    <li class="specific_item spec-camera">
                                        <div class="icn">
                                            <i class="fa fa-camera-retro"></i>
                                        </div>
                                        {{ $mobiles->main_camera }} Rear, {{ $mobiles->selfie_camera }} Front Camera
                                    </li>
                                    <li class="specific_item spec-screen">
                                        <div class="icn">
                                            <i class="fas fa-mobile-alt"></i>
                                        </div>
                                        6.1 inches (15.49 cm)
                                    </li>
                                    <li class="specific_item spec-sim">
                                        <div class="icn">
                                            <i class="fas fa-sim-card"></i>
                                        </div>
                                        {{ $mobiles->sim }}
                                    </li>
                                    <li class="specific_item spec-os">
                                        <div class="icn">
                                            <i class="fab fa-android"></i>
                                        </div>
                                        {{ $mobiles->os }}
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <div class="algn_wrpr clearfix">
                <div class="container_area align_left">
                    <div class="table_area">
                        <div class="table_hdr">
                            <h3 class="table_hdr_ttl">Apple iPhone 11 Price in India</h3>
                        </div>

                        <table class="table">
                            <thead>
                            <tr>

                                <th style="width: 200px;">Store</th>
                                <th style="width: 620px;">Details</th>
                                <th style="width: 200px;">Price</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>

                                <td style="width: 200px;">Amazon.in</td>
                                <td style="width: 620px;">New apple iphone 11 (64gb) - (product) red</td>
                                <td style="width: 200px;">₹51,999</td>

                            </tr>
                            <tr>

                                <td style="width: 200px;">Flipkart</td>
                                <td style="width: 620px;">Apple iphone 11 (black, 64 gb)</td>
                                <td style="width: 200px;">₹46,999</td>
                            </tr>
                            <tr>

                                <td style="width: 200px;">happimobiles</td>
                                <td style="width: 620px;">Iphone 11 black 64gb</td>
                                <td style="width: 200px;">₹54,900</td>
                            </tr>

                            <tr>

                                <td style="width: 200px;">Tata CliQ</td>
                                <td style="width: 620px;">Apple iphone 11 (64gb) - white</td>
                                <td style="width: 200px;">₹53,250</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="table_area tec_spec">

                        <!-- <h3 class="table_hdr_ttl tbl_spc_hdr">Apple IPhone 11 Specifications</h3> -->
                        <div class="Specification_tbl_wrpr">
                            <h4 class="Specification_tbl_ttl">Summary</h4>

                            <table class="table_spec">

                                <tbody>
                                <tr>
                                    <td>Processor</td>
                                    <td>{{ $mobiles->chipset }}</td>
                                </tr>
                                <tr>
                                    <td>Display</td>
                                    <td>6.1 inches (15.49 cms)</td>

                                </tr>
                                <tr>
                                    <td>Storage</td>
                                    <td>{{ $mobiles->storage }}</td>

                                </tr>
                                <tr>
                                    <td>Front Camera</td>
                                    <td>{{ $mobiles->selfie_camera }}, {{ $mobiles->sc_features }}</td>

                                </tr>

                                <tr>
                                    <td>Rear Camera</td>
                                    <td>{{ $mobiles->main_camera }}, {{ $mobiles->mc_features }}</td>

                                </tr>
                                <tr>
                                    <td>Battery</td>
                                    <td>{{ $mobiles->battery }}</td>

                                </tr>
                                <tr>
                                    <td>RAM</td>
                                    <td>{{ $mobiles->ram }}</td>

                                </tr>
                                </tbody>
                            </table>

                        </div>


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
            $('.product_detail_tumnl_img').click(function(){
                $('.product_detail_tumnl').removeClass('active');
                $(this).parent().addClass('active');
                $('#featured').attr('src', $(this).attr('src').replace('thumb','large'));
                $('#description').html($(this).attr('alt'));
            })
        });
    </script>
@endsection


