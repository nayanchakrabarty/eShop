@extends('layouts.home')

@section('css')
    <link rel="stylesheet" type="text/css" href="{{ asset('themes/innolytic/css/style.css') }}">


@endsection


@section('content')
    <div class="outer_wrap content_wrap">
        <div class="content_wrap_inner">
            <div class="container_area clearfix">
                <div class="content_area list_main">

                    <!-- Start heading area -->
                    <div class="heading_area  ">
                        <div class="main_heading ">

                            <div class="sort_wrap ">
                                SORT BY
                                <!--Dropdown area start -->
                                <select class="sort ">
                                    <option value="">Price: High to Low</option>
                                    <option value="">Price: Low to High</option>
                                    <option value="" selected="">Popularity</option>
                                    <option value="">Newest First</option>
                                </select>
                                <!--Dropdown area End -->
                            </div>
                            <h2 class="main_title">Mi 4G Mobiles Price In India</h2>
                        </div>

                    </div>
                    <!-- End Heading area -->

                    <!-- Main Section Content area start -->
                    <div id="section_content" class="content_area list_main">
                        <!-- Product list with pagination area -->
                        <div class="product_list_all ">
                            <!-- Product list item single page -->
                            @include('front_end.data_list')

                        </div>
                        <!--Left side content Start-->
                        <div class="fltr_wrpr1">
                            <div class="fltrs_apld_wrpr1">
                                <div class="fltrs_apld_wrpr_hdr">
                                    <div class="fltrs_apld_wrpr_hdng">Filters</div>
                                    <div class="fltrs_apld_wrpr_cler">Clear All</div>
                                </div>
                                <div class="fltrs_apld_wrpr">
                                    <div class="fltrs_apld" data-groupname="">
                                        <div class="fltrs_apld_item" data-value="">
                                            <span class="fltrs_apld_item_label">abcd</span>
                                            <img class="fltrs_apld_item_cler"
                                                 src="{{ asset('themes/innolytic/image/cross-grey-small.png') }}">
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <form id="formFilter">
                                <div class="fltr_wrpr">
                                    @foreach($filters as $filter)
                                        <div class="fltr">
                                            <div class="fltr_hdr">
                                                <span class="fltr_tt1">{{ $filter['tab'] }}</span>
                                            </div>

                                            @foreach($filter['sections'] as $section)
                                                @if ($section['field'] == 'brands')
                                                    <div class="fltr_search">
                                                        <input class="fltr_search_fld" type="text"
                                                               placeholder="search..">
                                                        <div class="fltr_search_icon fltr_search_icon_backgr">
                                                        </div>
                                                    </div>
                                                @elseif (!empty($section['header']))
                                                    <div class="fltr_sub_hdr">
                                                        <span class="fltr_sub_tt1">{{ $section['header'] }}</span>
                                                    </div>
                                                @endif

                                                @if ($section['type'] == 'Checkbox')
                                                    <div class="fltr_val_wrpr">
                                                        <div class="content">
                                                            <form action="#">
                                                                @foreach($section['options'] as $option)
                                                                    <div class="fltr_val">
                                                                        <input type="checkbox"
                                                                               id="option_{{ $option['id'] }}"
                                                                               name="{{ $section['field'] }}"
                                                                               value="{{ $option['value'] }}">
                                                                        <span
                                                                            class="featureName"> {{ $option['name'] }}</span>
                                                                    </div>
                                                                @endforeach
                                                            </form>
                                                        </div>
                                                    </div>
                                                @elseif ($section['type'] == 'Slider')
                                                    <div class="fltr_prc">
                                                        <div class="containerr">
                                                            <div class="roww">
                                                                <div class="wrapper">
                                                                    <div class="range-slider">
                                                                        <input type="text"
                                                                               name="{{ $section['field'] }}"
                                                                               id="{{ $section['field'] }}_slider"
                                                                               class="js-range-slider"
                                                                               value=""
                                                                               data-type="double"
                                                                               data-min="{{ $section['options']['min'] }}"
                                                                               data-max="{{ $section['options']['max'] }}"
                                                                               data-from="{{ $section['options']['min'] }}"
                                                                               data-to="{{ $section['options']['max'] }}"
                                                                               data-step="{{ $section['options']['step'] }}"
                                                                        />
                                                                    </div>
                                                                    <div class="extra-controls form-inline">
                                                                        <div class="form-group">
                                                                            <input name="{{ $section['field'] }}_min"
                                                                                   type="text"
                                                                                   id="{{ $section['field'] }}_min"
                                                                                   class="js-input-from form-control"
                                                                                   value="{{ $section['options']['min'] }}"/>
                                                                            <span style="margin: 0 5px">to</span>
                                                                            <input name="{{ $section['field'] }}_max"
                                                                                   type="text"
                                                                                   id="{{ $section['field'] }}_max"
                                                                                   class="js-input-to form-control"
                                                                                   value="{{ $section['options']['max'] }}"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>

                                                    <script>
                                                        // Trigger
                                                        $(function () {
                                                            let $range = $("#{{ $section['field'] }}_slider"),
                                                                $inputFrom = $("#{{ $section['field'] }}_min"),
                                                                $inputTo = $("#{{ $section['field'] }}_max"),
                                                                instance,
                                                                min = 0,
                                                                max = 100000,
                                                                from = 0,
                                                                to = 0;

                                                            $range.ionRangeSlider({
                                                                prefix: '',
                                                                prettify_enabled: true,
                                                                prettify_separator: ",",
                                                                values_separator: " - ",
                                                                onStart: updateInputs,
                                                                onChange: updateInputs
                                                            });

                                                            instance = $range.data("ionRangeSlider");

                                                            function updateInputs(data) {
                                                                from = data.from;
                                                                to = data.to;

                                                                $inputFrom.prop("value", from);
                                                                $inputTo.prop("value", to);
                                                            }

                                                            $inputFrom.on("input", function () {
                                                                let val = $(this).prop("value");

                                                                // validate
                                                                if (val < min) {
                                                                    val = min;
                                                                    $(this).val(val);
                                                                } else if (val > to) {
                                                                    val = to;
                                                                    $(this).val(val);
                                                                }

                                                                instance.update({
                                                                    from: val
                                                                });
                                                            });

                                                            $inputTo.on("input", function () {
                                                                let val = $(this).prop("value");

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

                                                @else
                                                    <div class="fltr_val_wrpr">
                                                        <div class="content">
                                                            <form action="#">
                                                                @foreach($section['options'] as $option)
                                                                    <div class="fltr_val">
                                                                        <input type="radio"
                                                                               name="{{ $section['field'] }}"
                                                                               value="{{ $option['value'] }}">
                                                                        <span>{{ $option['name'] }}</span>
                                                                    </div>
                                                                @endforeach
                                                            </form>
                                                        </div>
                                                    </div>

                                                @endif
                                            @endforeach

                                        </div>
                                    @endforeach


                                </div>
                            </form>

                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
@endsection

@section('javascript')
    <script type="text/javascript" src="{{ asset('themes/innolytic/js/required.js') }}"></script>
    <script>
        $(function () {

            let preparedData = {};

            $('#formFilter input').bind('change', function () {

                let data = {};
                let selectedItem = [];
                $('#formFilter :checked').each(function () {
                    if ($(this).attr('name')) {
                        if (!data[$(this).attr('name')]) {
                            data[$(this).attr('name')] = [];
                        }
                        data[$(this).attr('name')].push($(this).val());
                    }

                    selectedItem.push({
                        'id': $(this).attr('id'),
                        'label': $(this).siblings().text(),
                        'value': $(this).val()
                    });
                });

                // console.log(selectedItem);

                let selectedItemHtml = '';
                for (let item of selectedItem) {
                    selectedItemHtml += `<div class="fltrs_apld" data-option-id="${item.id}">
                        <div class="fltrs_apld_item" data-value="${item.value}">
                            <span class="fltrs_apld_item_label">${item.label}</span>
                            <img class="fltrs_apld_item_cler"
                                src="{{ asset('themes/innolytic/image/cross-grey-small.png') }}">
                        </div>
                       </div>`;
                }

                $('.fltrs_apld_wrpr').html(selectedItemHtml).append(`
                    <script>
                        $(".fltrs_apld").on("click", function (){
                            $(this).hide();
                            let selectedId = $(this).data('option-id');
                            $("#" + selectedId).prop('checked', false);
                            $("#formFilter input").first().trigger("change");
                        });
                    <\/script>
                `);

                $(".fltrs_apld_wrpr_cler").on("click", function (){
                    selectedItem.length = 0;
                    $("#formFilter input").prop('checked', false).first().trigger("change");

                });
                //console.log(selectedItem);

                preparedData = {};
                for (let key in data) {
                    preparedData[key] = data[key].join('|');
                }
                getMobiles(1);
            })

            $('body').on('click', '.pagination a', function (e) {
                e.preventDefault();

                $('.product_list_all li').removeClass('active');
                $(this).parent('li').addClass('active');
                let page_no = $(this).attr('href').split('page=')[1];
                getMobiles(page_no);
            });

            function getMobiles(page) {
                preparedData['page'] = page;

                $.ajax({
                    type: "GET",
                    url: '{{ route('newmobile') }}',
                    data: preparedData,
                    dataType: "html",
                    beforeSend: function () {
                        if (loaderImageHtml) {
                            $('.product_list_all').html(loaderImageHtml).fadeIn(50);
                        }
                    },
                    success: function (data) {
                        $('.product_list_all').html(data);
                    },
                    error: function (xhr) {
                        alertify.error(xhr.statusText);
                    }
                })
            }

            // $('#formFilter input').bind('change', function () {
            //
            //     console.log($('#formFilter').serialize());
            //
            // });

        })

    </script>

@endsection
