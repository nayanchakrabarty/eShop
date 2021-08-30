
    <div class="product_list_single_page">
        @if(count($filtereds) == 0)
        <div class="col-md-12">
            <div class="box">
                <div class="box-body">
                    <div class="panel-body text-center">
                        <h4>No Mobiles Available!</h4>
                    </div>
                </div>
            </div>
        </div>
        @else


        <ul class="product_list prdct-grid--list clearfix">
            <!-- Start list item 1 -->
            @foreach($filtereds as $filtered)
            <li class="product_item clearfix card product_item_other ">

                <div class="compair_div_parent ">
                    <div class="product_item_img_wrap ">
                        <img class="product_item_img " src="{{ asset('themes/innolytic/image/16442-152-1.jpg') }}"
                             alt="xawmi-redme-note-10">
                    </div>
                    <div class="compair_product list_page ">
                        <form action="#">
                            <div class="compare_btn">
                                <i class="fas fa-balance-scale-left"></i>
                                <span>Compare</span>
                            </div>

                        </form>
                    </div>
                </div>
                <div class="product_item_details ">
                    <div class="product_item_price main-wrpr__cols1">
                        <span class="product_item_rp ">₹</span>
                        <span> </span>
                        <span class="product_item_pr_val">{{$filtered->price}}</span>
                        <div class="product_item_pr_more">
                            See more prices
                            <i class="fa fa-angle-down"></i>
                        </div>
                        <div class="prdct-item__prc-drpdwn sctn cols1-prdcts clearfix">
                            <div class="sctn__inr clearfix">
                                <div class="cols1-prdcts__str">
                                    <div class="cols1-prdcts__str-name">
                                        <img class="cols1-prdcts__str-icon" src="{{ asset('themes/innolytic/image/flipkart.png') }}">
                                        <span>Flipkart</span>
                                    </div>
                                    <div class="cols1-prdcts__gts-btn">
                                        ₹9,999 ❯
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="product_item_score ">
                        <span class="product_item_scr_val ">8.1</span><br>
                        Expert Score
                    </div>
                    <a class="product_item_name" href="#">{{$filtered->title}}</a>
                    <div class="product_item_rating_info clearfix">
                        <div class="rating_wrpr ">
                            <div class="rating_star">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="product_item_spcific_info ">
                        <ul class="product_item_spcific_colm ">
                            <li class="product_item_spcification spec-cpu ">
                                <div class="icn">
                                    <i class="fas fa-microchip center"></i>
                                </div>
                                {{$filtered->chipset}}
                            </li>
                            <li class="product_item_spcification spec-ram ">
                                <div class="icn">
                                    <i class="fas fa-memory "></i>
                                </div>
                                {{$filtered->ram}} RAM
                            </li>
                            <li class="product_item_spcification spec-int_stor">
                                <div class="icn">
                                    <i class="fas fa-sd-card "></i>
                                </div>
                                {{$filtered->storage}} internal storage
                            </li>
                            <li class="product_item_spcification spec-battery">
                                <div class="icn">
                                    <i class="fa fa-battery-three-quarters "></i>
                                </div>
                                {{$filtered->battery}}
                            </li>
                        </ul>
                        <ul class="product_item_spcific_colm ">
                            <li class="product_item_spcification spec-camera">
                                <div class="icn">
                                    <i class="fa fa-camera-retro"></i>
                                </div>
                                {{$filtered->main_camera}} Rear, {{$filtered->selfie_camera}} Front Camera rear
                            </li>
                            <li class="product_item_spcification spec-screen">
                                <div class="icn">
                                    <i class="fas fa-mobile-alt"></i>
                                </div>
                                {{$filtered->dimensions}} Screen
                            </li>
                            <li class="product_item_spcification spec-sim">
                                <div class="icn">
                                    <i class="fas fa-sim-card"></i>
                                </div>
                                {{$filtered->sim}}
                            </li>
                            <li class="product_item_spcification spec-os">
                                <div class="icn">
                                    <i class="fab fa-android"></i>
                                </div>
                                {{$filtered->os}}
                            </li>
                        </ul>
                    </div>
                    <div class="product_item_spcific_link ">
                        <a href="#">See Full Specifications</a>

                    </div>
                </div>
            </li>
            @endforeach
            <!-- End of list item 1 -->

            {{--        <div class="pagination">--}}
            {{--            <a class="pagination_item fpage" href="#">1</a>--}}
            {{--            <a class="pagination_item" href="#">2</a>--}}
            {{--            <a class="pagination_item" href="#">Next</a>--}}
            {{--            <a class="pagination_item" href="#">Last</a>--}}
            {{--        </div>--}}
        </ul>

        @endif
    </div>


    @if ($filtereds->total() > 0)
        <div class="row pgnt">

                <div class="col-sm-4" style="margin: 30px 0;">
                    Showing {{ $filtereds->firstItem() }} to {{ $filtereds->lastItem() }} of {{ $filtereds->total() }} entries
                </div>
                <div class="col-sm-8 text-right">
                    {{ $filtereds->links('pagination.default') }}
                </div>


        </div>
    @endif


