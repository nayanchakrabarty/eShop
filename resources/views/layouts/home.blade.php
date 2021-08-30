<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="language" content="en-uk, english">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Home page</title>

    <!-- Owl carousel -->
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.css') }}">

    <!-- Alertify -->
    <link rel="stylesheet" href="{{ asset('alertify/alertify.core.css') }}"/>
    <link rel="stylesheet" href="{{ asset('alertify/alertify.default.css') }}"/>

    <!-- Jquery-Typeahead -->
    <link rel="stylesheet" href="{{ asset('jquery-typeahead-2.11.0/jquery.typeahead.min.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('themes/innolytic/css/playStoreButton.css') }}">

{{--    <link rel="stylesheet" type="text/css" href="{{ asset('themes/innolytic/css/google_play_btn.css') }}">--}}
    <!-- list and detail page custom css-->
    <!--price range slider-->
    @yield('css')
    <!--custom -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/frontstyle.css') }}">

    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,700,900,100' rel='stylesheet' type='text/css'>

    <!-- Favicon icon -->
    <link rel="shortcut icon" href="{{ asset('images/favicon.ico') }}">
    <script>
        let dateFormat = '{{ \App\Helpers\CommonHelper::getJsDisplayDateFormat() }}';
        let maxUploadSize = parseInt('{{ config('settings.MAXIMUM_FILE_SIZE') }}');
        let maxUploadSizeInByte = maxUploadSize * 1024 * 1024;
        let mediaUploadRoute = '{{ route('media.summerNoteUpload') }}';
        let defaultDashboardTime = parseInt('{{ config('settings.DEFAULT_DASHBOARD_TIME') }}');
        let loaderImageHtml = '<img src="{{ asset('images/loader-64.gif') }}" class="ajax-loader">';
    </script>

    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('themes/innolytic/js/bootstrap.min.js') }}"></script>

</head>


<body>
<!-- Header Area wrapper Starts -->
    <div id="main_header" class="header header_section">
        <div id="logo_search" class="top_header_wrpr">
            <div class="top_header">
                <a class="header_logo" href="#">
                    <img class="header_logo_image" src="{{ asset('themes/innolytic/image/blue@2x.png') }}" alt="">
                </a>
                <div class="search_wdgt">
                    <div id="search-area">
                        <div class="search-box">
                            <div class="input-field second-wrap typeahead__container">
                                <div class="typeahead__query">
                                    <input id="search-input" class="typeahead" type="text" aria-label="search"
                                           autocomplete="off"
                                           placeholder="Search Mobiles"/>
                                </div>
                            </div>
                            <div class="input-field third-wrap">
                                <button class="btn-search" type="button">
                                    <i class="fa fa-2x fa-search"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                </div>

{{--                <div class="play_store_btn">--}}
{{--                    <a class="btn btn-google" href="#" title="Play Store">p</a>--}}
{{--                </div>--}}
            </div>
        </div>

        <div class="sub_header">
            <ul class="navgtn_bar">
                <li class="navgtn_bar_item {{ Request::is('/') ? 'active' : '' }}">
                    <a class="navgtn_bar_item_link" href="{{ route('home') }}">Home</a>
                </li>
                <li class="navgtn_bar_item {{ Request::is('') ? 'active' : '' }}">
                    <a class="navgtn_bar_item_link" href="#">Popular Mobiles</a>
                </li>
                <li class="navgtn_bar_item {{ Request::is('') ? 'active' : '' }}">
                    <a class="navgtn_bar_item_link" href="#">Upcoming Mobiles</a>
                </li>
                <li class="navgtn_bar_item {{ Request::is('') ? 'active' : '' }}">
                    <a class="navgtn_bar_item_link" href="#">News</a>
                </li>
                <li class="navgtn_bar_item {{ Request::is('newmobile') ? 'active' : '' }}">
                    <a class="navgtn_bar_item_link" href="{{route('newmobile')}}">New Mobiles</a>
                </li>
                <li class="navgtn_bar_item {{ Request::is('compare') ? 'active' : '' }}">
                    <a class="navgtn_bar_item_link" href="{{route('compare')}}">Compare</a>
                </li>
            </ul>
            <!-- Google Play button -->
            <a href="#" target="_blank" class="market-btn google-btn" role="button">
                {{--            <span class="market-button-subtitle">Download on the</span>--}}
                <span class="market-button-title">Google Play</span>
            </a>
        </div>

    </div>

<!--    main section-->

    @yield('content')

<!-- Modal Filter -->
<div class="modal fade right-full-height size-lg" tabindex="-1" role="dialog" aria-labelledby="searchResults"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="searchResults">Search Results</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body article-list"></div>
        </div>
    </div>
</div>

<!--script-->

    <script type="text/javascript" src="{{ asset('js/owl.carousel.js') }}"></script>

<!--script for auto search-->
    <script src="{{ asset('jquery-typeahead-2.11.0/jquery.typeahead.min.js') }}"></script>
    <script src="{{ asset('alertify/alertify.min.js') }}"></script>
    <script src="{{ asset('vendor/jquery-validation/dist/jquery.validate.min.js') }}"></script>
    <script src="{{ asset('vendor/select2/dist/js/select2.full.min.js') }}"></script>
    <script src="{{ asset('vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js') }}"></script>
    <script src="{{ asset('vendor/iCheck/icheck.min.js') }}"></script>

@yield('javascript')

    <script>
        $(document).ready(function()
        {
            let searchInputObj = $('#search-input');
            let loaderImageHtml = '<img src="{{ asset('images/loader-64.gif') }}" class="ajax-loader">';

            searchInputObj.typeahead({
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
                                    q: query
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

            $('.btn-search').click(function () {
                if (searchInputObj.val()) {
                    $.ajax({
                        type: "GET",
                        url: "{{ route('mobiles.searchList') }}",
                        data: {
                            q: searchInputObj.val(),
                            isHtml: true
                        },
                        dataType: "html",
                        beforeSend: function () {
                            $('.right-full-height .modal-title').html('Search Results');
                            $('.right-full-height').modal('show');
                            if (loaderImageHtml) {
                                $('.article-list').html(loaderImageHtml).fadeIn(50);
                            }
                        },
                        success: function (data) {
                            $('.article-list').html(data);
                        }
                    });
                } else {
                    alertify.error('Please write somethings');
                }
            });

            $('.btn-preview').click(function () {
                let productId = $(this).data('product-id');
                let productTitle = $(this).data('product-title');
                let url = '{{ route('products.show', ':productId') }}';
                if (productId) {
                    $.ajax({
                        type: "GET",
                        url: url.replace(':productId', productId),
                        dataType: "html",
                        beforeSend: function () {
                            $('.right-full-height .modal-title').html(productTitle);
                            $('.right-full-height').modal('show');
                            if (loaderImageHtml) {
                                $('.article-list').html(loaderImageHtml).fadeIn(50);
                            }
                        },
                        success: function (data) {
                            $('.article-list').html(data);
                        }
                    });
                }
            });

            if($('.bbb_viewed_slider').length)
            {
                var viewedSlider = $('.bbb_viewed_slider');

                viewedSlider.owlCarousel(
                    {
                        loop:true,
                        margin:10,
                        autoplay:false,
                        autoplayTimeout:6000,
                        nav:false,
                        dots:false,
                        responsive:
                            {
                                0:{items:1},
                                575:{items:2},
                                768:{items:3},
                                991:{items:4}
                                // 1199:{items:6}
                            }
                    });

                if($('.bbb_viewed_prev').length)
                {
                    var prev = $('.bbb_viewed_prev');
                    prev.on('click', function()
                    {
                        viewedSlider.trigger('prev.owl.carousel');
                    });
                }

                if($('.bbb_viewed_next').length)
                {
                    var next = $('.bbb_viewed_next');
                    next.on('click', function()
                    {
                        viewedSlider.trigger('next.owl.carousel');
                    });
                }
            }


        });
    </script>

</body>

</html>


{{--@if(Request::is('/'))--}}
{{--    <!-- Load Facebook SDK for JavaScript -->--}}
{{--    <div id="fb-root"></div>--}}
{{--    <!-- Facebook chat Chat Plugin code -->--}}
{{--    <div class="fb-customerchat" attribution=setup_tool page_id="104211988074632" minimized="true">--}}
{{--    </div>--}}
{{--@else--}}
{{--    <!-- Go to Top Link -->--}}
{{--    <a href="#" class="back-to-top">--}}
{{--        <i class="lni-arrow-up"></i>--}}
{{--    </a>--}}
{{--@endif--}}

{{--<!-- Preloader -->--}}
{{--<div id="preloader">--}}
{{--    <div class="loader" id="loader-1"></div>--}}
{{--</div>--}}
{{--<!-- End Preloader -->--}}

{{--<!-- Modal Filter -->--}}
{{--<div class="modal fade right-full-height size-lg" tabindex="-1" role="dialog" aria-labelledby="searchResults"--}}
{{--     aria-hidden="true">--}}
{{--    <div class="modal-dialog" role="document">--}}
{{--        <div class="modal-content">--}}
{{--            <div class="modal-header">--}}
{{--                <h5 class="modal-title" id="searchResults">Search Results</h5>--}}
{{--                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--}}
{{--                    <span aria-hidden="true">&times;</span>--}}
{{--                </button>--}}
{{--            </div>--}}
{{--            <div class="modal-body article-list"></div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}

{{--<script src="{{ asset('js/member.js') }}"></script>--}}
{{--@yield('javascript')--}}
{{--<script src="{{ asset('js/common.js') }}"></script>--}}
{{--<script>--}}
{{--    $(document).ready(function () {--}}

{{--        let searchInputObj = $('#search-input');--}}
{{--        let loaderImageHtml = '<img src="{{ asset('images/loader-64.gif') }}" class="ajax-loader">';--}}

{{--        $('.btn-search').click(function () {--}}
{{--            if (searchInputObj.val()) {--}}
{{--                $.ajax({--}}
{{--                    type: "GET",--}}
{{--                    url: "{{ route('articles.searchList') }}",--}}
{{--                    data: {--}}
{{--                        q: searchInputObj.val(),--}}
{{--                        isHtml: true--}}
{{--                    },--}}
{{--                    dataType: "html",--}}
{{--                    beforeSend: function () {--}}
{{--                        $('.right-full-height .modal-title').html('Search Results');--}}
{{--                        $('.right-full-height').modal('show');--}}
{{--                        if (loaderImageHtml) {--}}
{{--                            $('.article-list').html(loaderImageHtml).fadeIn(50);--}}
{{--                        }--}}
{{--                    },--}}
{{--                    success: function (data) {--}}
{{--                        $('.article-list').html(data);--}}
{{--                    }--}}
{{--                });--}}
{{--            } else {--}}
{{--                alertify.error('Please write somethings');--}}
{{--            }--}}
{{--        });--}}

{{--        $('.btn-preview').click(function () {--}}
{{--            let productId = $(this).data('product-id');--}}
{{--            let productTitle = $(this).data('product-title');--}}
{{--            let url = '{{ route('products.show', ':productId') }}';--}}
{{--            if (productId) {--}}
{{--                $.ajax({--}}
{{--                    type: "GET",--}}
{{--                    url: url.replace(':productId', productId),--}}
{{--                    dataType: "html",--}}
{{--                    beforeSend: function () {--}}
{{--                        $('.right-full-height .modal-title').html(productTitle);--}}
{{--                        $('.right-full-height').modal('show');--}}
{{--                        if (loaderImageHtml) {--}}
{{--                            $('.article-list').html(loaderImageHtml).fadeIn(50);--}}
{{--                        }--}}
{{--                    },--}}
{{--                    success: function (data) {--}}
{{--                        $('.article-list').html(data);--}}
{{--                    }--}}
{{--                });--}}
{{--            }--}}
{{--        });--}}

{{--        let contactFormObj = $("#contactForm");--}}
{{--        contactFormObj.validator().on("submit", function (event) {--}}
{{--            if (event.isDefaultPrevented()) {--}}
{{--                // handle the invalid form...--}}
{{--                formError();--}}
{{--                submitMSG(false, "Did you fill in the form properly?");--}}
{{--            } else {--}}
{{--                // everything looks good!--}}
{{--                event.preventDefault();--}}
{{--                $.ajax({--}}
{{--                    type: "POST",--}}
{{--                    url: "contact_us_message",--}}
{{--                    data: {--}}
{{--                        'full_name': $("#full_name").val(),--}}
{{--                        'email': $("#email").val(),--}}
{{--                        'subject': $("#msg_subject").val(),--}}
{{--                        'message': $("#message").val(),--}}
{{--                        '_token': '{{ csrf_token() }}'--}}
{{--                    },--}}
{{--                    success: function (text) {--}}
{{--                        if (text == "success") {--}}
{{--                            formSuccess();--}}
{{--                        } else {--}}
{{--                            formError();--}}
{{--                            submitMSG(false, text);--}}
{{--                        }--}}
{{--                    }--}}
{{--                });--}}
{{--            }--}}
{{--        });--}}

{{--        function formSuccess() {--}}
{{--            contactFormObj[0].reset();--}}
{{--            submitMSG(true, "Message Submitted!")--}}
{{--        }--}}

{{--        function formError() {--}}
{{--            contactFormObj.removeClass().addClass('shake animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {--}}
{{--                $(this).removeClass();--}}
{{--            });--}}
{{--        }--}}

{{--        function submitMSG(valid, msg) {--}}
{{--            let msgClasses;--}}
{{--            if (valid) {--}}
{{--                msgClasses = "h3 text-left tada animated text-success";--}}
{{--            } else {--}}
{{--                msgClasses = "h3 text-left text-danger";--}}
{{--            }--}}
{{--            $("#msgSubmit").removeClass().addClass(msgClasses).text(msg);--}}
{{--        }--}}
{{--    });--}}
{{--</script>--}}
{{--@if(Request::is('/'))--}}
{{--    <script>--}}
{{--        window.fbAsyncInit = function () {--}}
{{--            FB.init({--}}
{{--                xfbml: true,--}}
{{--                version: 'v9.0'--}}
{{--            });--}}
{{--        };--}}

{{--        (function (d, s, id) {--}}
{{--            var js, fjs = d.getElementsByTagName(s)[0];--}}
{{--            if (d.getElementById(id)) return;--}}
{{--            js = d.createElement(s);--}}
{{--            js.id = id;--}}
{{--            js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';--}}
{{--            fjs.parentNode.insertBefore(js, fjs);--}}
{{--        }(document, 'script', 'facebook-jssdk'));--}}
{{--    </script>--}}
{{--@endif--}}

