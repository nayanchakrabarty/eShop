@extends('layouts.home')

@section('css')
<link rel="stylesheet" href="{{ asset('themes/innolytic/css/datatable.css') }}">
<style>
    .project-menu ul li a {
        color: black;
    }

    .project-menu ul li.active a {
        color: #5e88fc;
        font-weight: 600;
    }

    .store-wrapper .left-div-img {
        width: 100%;
        height: 300px;
    }


    .store-wrapper .left-div-img img {
        height: 100%;
        width: 100%;
        object-fit: cover;
    }

    .store-wrapper-inner {
        box-shadow: -5px 10px 20px 0px rgba(43, 43, 43, 0.2);
        transition: all 0.5s ease;
    }

    .choose_addon_table td label {
        cursor: pointer;
    }

    @media all and (min-width:768px) {
        .custom-button {
            width: 100%;
            display: block;
            margin-bottom: 3px;
        }

        .left-div-info {
            display: none;
        }

        .right-div-info {
            display: block;
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            flex-wrap: wrap;
        }
    }

    @media all and (max-width:768px) {
        .left-div-info {
            display: block;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;

        }

        .custom-button {
            width: 100%;
            display: block;
            margin-bottom: 3px;
        }

        .right-div-info {
            display: none;
        }
    }
</style>
@endsection

@section('content-header')
<div class="site-blocks-cover" style="background-image: url('{{ asset('images/bg_1.jpg') }}')">
</div>
@endsection


@section('content')
<section id="products" class="section-padding">
    <div class="container">
        @include('members.settingsfiles.messages')
        <div class="section-header text-center">
            <h2 class="section-title wow fadeInDown" data-wow-delay="0.3s">
                Settings
            </h2>
            <div class="shape wow fadeInDown" data-wow-delay="0.3s"></div>
        </div>

        <div class="row">
            {{-- sidenave here --}}
            @include('members.settingsfiles.sidenav')

            <div class="col-9">
                <!-- Info boxes -->
                <div class="row store-wrapper">
                    @foreach($setupPackages as $store)
                    @php
                    $sslcertificate_link="";
                    $store_url="";
                    $addon_packages=[];
                    if($store)
                    {
                    $theme_img = App\Models\Product::where('title',$store->theme)->first()->thumb_image;
                    $store_url=$store->domain_url;
                    $sslcertificate_link=$store->sslcertificate_link;
                    }
                    // get the packages related to store
                    $store_addon_package=App\Models\Package::where('package_code',$store->package_code)->first();
                    if(!empty($store_addon_package))
                    {
                    $addon_packages=$store_addon_package->childPackage->packageOptions;
                    }

                    $store_addons=App\Models\StoreAddon::where('store_id',$store->id)->orderBy('id','desc')->get();
                    // store ids of the addons
                    $store_addon_ids=$store_addons->mapWithKeys(function($store_addon){
                    return [$store_addon['addon_id']=>$store_addon['status']];
                    });


                    @endphp
                    <div class="col-md-12 col-sm-12 col-xs-12 mb-3">
                        <div class="col-12 store-wrapper-inner bg-white p-4">
                            {{-- inner items start --}}
                            <div class="row">
                                {{-- left panel start --}}
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="row flex-column">
                                        <div class="left-div-info col-12 mb-2">
                                            <div class="left-div-site-info">
                                                <span class="info-box-text">Store -
                                                    {{ ($store->id + 1000) }}</span>
                                                <span class="info-box-number">
                                                    {{ $store->status }}
                                                </span>
                                            </div>
                                            <div class="left-div-site-ssl text-right">
                                                @if($store->domain_type=='subdomain')
                                                <span class="badge bg-success">SSL Enabled</span>
                                                @else
                                                <span
                                                    class="badge {{ $sslcertificate_link ? 'bg-success' : 'bg-dark' }} ">
                                                    {{ $sslcertificate_link ? 'SSL Enabled' : 'SSL Unavailable' }}
                                                </span>
                                                @endif
                                                <span class="info-box-text">
                                                    {{$store->package_code}}
                                                </span>
                                            </div>
                                        </div>
                                        <div class="left-div-img col-12 mb-2">
                                            @if($store)
                                            <img class="card-img-top" src="{{ asset('storage/' . $theme_img) }}"
                                                alt="theme_img">
                                            @else
                                            <i class="fa fa-globe"></i>
                                            @endif
                                        </div>
                                        <div class="left-div-btns col-12">
                                            <div class="row justify-content-start justify-content-lg-start">
                                                @if($store)
                                                <div class="col-md-6 col-md-6 col-sm-4 col-6">
                                                    <a class="btn btn-sm custom-button btn-info bg-aqua btn-flat"
                                                        href="{{ $store_url }}" target="_blank">
                                                        Visit store
                                                    </a>
                                                </div>

                                                @if(!$store->sslcertificate_link)
                                                <div class="col-lg-6 col-md-6 col-sm-4 col-6">
                                                    <button
                                                        class="btn btn-sm custom-button btn-info bg-aqua btn-flat  btn-add-domain"
                                                        store-id="{{ $store->id }}"
                                                        domain-type="{{ $store->domain_type }}"
                                                        data-package-type="{{ $store->package_code }}">
                                                        {{ $store->domain_type == 'subdomain' ? "Add Domain" : "Add SSL Certificate" }}
                                                    </button>
                                                </div>
                                                @endif
                                                @endif
                                                <div class="col-lg-6 col-md-6 col-sm-4 col-6">
                                                    <button
                                                        class="btn btn-sm custom-button bg-aqua btn-info btn-flat btn-addon btn-add-addons"
                                                        store-id="{{ $store->id }}">
                                                        Add Addons
                                                    </button>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-4 col-6">
                                                    <button
                                                        class="btn btn-sm custom-button btn-success btn-flat btn-subscribe mt-md-0"
                                                        id="{{ $store->id }}"
                                                        data-package-type="{{ $store->order->package_type }}">
                                                        Subscribe Plan
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                {{-- left panel end --}}

                                {{-- right panel start --}}
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="row flex-column">
                                        {{-- Right info div start --}}
                                        <div class="right-div-info col-12 p-0">
                                            <div class="right-div-site-info">
                                                <span class="info-box-text">Store -
                                                    {{ ($store->id + 1000) }}</span>
                                                <span class="info-box-number">
                                                    {{ $store->status }}
                                                </span>
                                            </div>
                                            <div class="right-div-site-ssl text-right">
                                                @if($store->domain_type=='subdomain')
                                                <span class="badge bg-success">SSL Enabled</span>
                                                @else
                                                <span
                                                    class="badge {{ $sslcertificate_link ? 'bg-success' : 'bg-dark' }} ">
                                                    {{ $sslcertificate_link ? 'SSL Enabled' : 'SSL Unavailable' }}
                                                </span>
                                                @endif
                                                <p style="text-transform:uppercase">
                                                    {{$store->package_code}}
                                                </p>
                                            </div>
                                        </div>
                                        {{-- Right info div end --}}

                                        {{-- Addon div start --}}
                                        <div class="right-div-addon col-12 mt-2">
                                            <div class="row pl-2 pr-2 alert-info">
                                                <span>Addons</span>
                                            </div>
                                            <div class="row addon-table">
                                                <div class="table-responsive">
                                                    <table class="table table-borderless table-hover table-sm">
                                                        <thead class="thead-light">
                                                            <tr>
                                                                <th>Name</th>
                                                                <th class="text-center">
                                                                    Status
                                                                </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            {{-- first get the addons that users have --}}
                                                            @if(!empty($store_addons))
                                                            @foreach($store_addons as $store_addon)
                                                            <tr>
                                                                <td>{{$store_addon->title}}</td>
                                                                <td class="text-center">
                                                                    <span
                                                                        class="badge bg-{{$store_addon->status == "Completed" ? 'success':'aqua'}}">
                                                                        {{$store_addon->status}}
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                            @endforeach
                                                            @endif
                                                            {{-- then show the users which are not taken yet --}}
                                                            @foreach ($addon_packages as $addon_package)
                                                            @if (!$store_addon_ids->has($addon_package->id))
                                                            <tr>
                                                                <td>{{$addon_package->title}}</td>
                                                                <td class="text-center">----</td>
                                                            </tr>
                                                            @endif
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        {{-- addon div end --}}

                                    </div>
                                </div>
                                {{-- right panel end --}}

                            </div>
                            {{-- inner items end --}}
                        </div>
                    </div>
                    @endforeach

                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="subscriptionModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="subscriptionModalLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="{{ route('members.checkout') }}" class="form-inline">
                            <input type="hidden" name="subscription_type" value="web_plan">
                            <input type="hidden" name="setup_id" value="">
                            <label for="subscription_plan" class="col-sm-3">Subscription Plan</label>
                            <select name="subscription_plan" id="subscription_plan" class="form-control col-sm-5 mr-3">
                                <option value="1">1 Month Plan</option>
                                <option value="3">3 Month Plan</option>
                                <option value="6">6 Month Plan</option>
                                <option value="9">9 Month Plan</option>
                                <option value="12">12 Month Plan</option>
                            </select>
                            <button class="btn btn-primary btn-flat" type="submit">Buy Now</button>
                        </form>

                        <br>
                        <hr>
                        <h5 class="text-center mb-2">Subscription Plan History</h5>
                        <div class="table-responsive data-table"></div>
                    </div>

                </div>
            </div>
        </div>
        {{-- domain Modal --}}
        <div class="modal fade" id="changedomainModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="changedomainModalLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row container">
                            <form method="POST" action="{{ route('store.changedomain') }}" class="col-12"
                                enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="shop_id" id="shop_id" value="">
                                <input type="hidden" name="operation_type" id="operation_type" value="">
                                <div class="form-group row justify-content-center align-items-center domain_input">
                                    <label for="domain_name" class="col-md-3">Enter domain name</label>
                                    <input type="text" name="domain_name" id="domain_name"
                                        class="form-control col-md-5 " required />
                                </div>
                                <div class="certificate_inputs">
                                    <div class="form-group row justify-content-center align-items-center">
                                        <label for="ca_bundle_file" class="col-md-3">Ca bundle file</label>
                                        <div class="col-md-5 p-0">
                                            <input type="file" name="ca_bundle_file" id="ca_bundle_file" required />
                                        </div>
                                    </div>
                                    <div class="form-group row justify-content-center align-items-center">
                                        <label for="ssl_certificate_file" class="col-md-3">SSL Certificate file</label>
                                        <div class="col-md-5 p-0">
                                            <input type="file" name="ssl_certificate_file" id="ssl_certificate_file"
                                                required />
                                        </div>
                                    </div>
                                    <div class="form-group row justify-content-center align-items-center">
                                        <label for="private_key_file" class="col-md-3">Private Key File</label>
                                        <div class="col-md-5 p-0">
                                            <input type="file" name="private_key_file" id="private_key_file" required />
                                        </div>
                                    </div>
                                </div>

                                <div
                                    class="form-group row justify-content-sm-end justify-content-end justify-content-md-center align-items-center">

                                    <button class="mt-2 mb-2 btn btn-primary btn-flat changedomain_button"
                                        type="submit">Add to
                                        domain</button>

                                </div>
                            </form>
                        </div>

                        <div class="col-md-12 mt-4">
                            <div class="box box-default">
                                <div class="box-header">
                                    <h3 class="box-title">
                                        Instructions
                                    </h3>
                                </div>
                                <div class="box-body">
                                    <p>* Must have a registered domain name</p>
                                    <p>* ca bundle and ssl certificate must be a certificate file</p>
                                    <p>* private key must be a key file</p>
                                    <p>* Special characters like($,#,%,*,& etc) are not granted</p>
                                    <p>* No need to enter www before domain name</p>
                                    <p class="p-2 font-weight-bold">Input examples: <br> innolytic.xyz <br>
                                        storezilla.com <br>
                                        mystore.com.bd </p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        {{-- Addon Modal --}}
        <div class="modal fade" id="addAddonsModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-md" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addAddonModalLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <div class="addon-container row">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

@endsection

@section('javascript')
<script>
    $(document).ready(function () {
        let key_file_error = 0;
        let cert_file_error = 0;

        $('.btn-subscribe').click(function () {
            let setupId = $(this).attr('id');
            let packageType = $(this).data('package-type');
            $('input[name="setup_id"]').val(setupId);
            if (packageType == 'web') {
                $('#subscriptionModalLabel').html('Store - ' + (1000 + parseInt(setupId)));
            } else if (packageType == 'android') {
                $('#subscriptionModalLabel').html('Android App - ' + (1000 + parseInt(setupId)));
            } else if (packageType == 'ios') {
                $('#subscriptionModalLabel').html('iOS App - ' + (1000 + parseInt(setupId)));
            }
            $('#subscriptionModal').modal('show');

            let url =
                '{{ route("members.subscriptionPlanHistory", ":setupId") }}';

            $.ajax({
                type: "GET",
                url: url.replace(':setupId', setupId),
                dataType: "html",
                beforeSend: function () {
                    $('.data-table')
                        .html(
                            '<div class="text-center mt-3 mb-3"><img src="{{ asset('images/ajax-loader-24.gif') }}"></div>'
                        )
                        .fadeIn(50);
                },
                success: function (jsonString) {
                    let jsonObject = JSON.parse(jsonString);
                    if (jsonObject.status === 'OK') {
                        $('.data-table').html(jsonObject.html);
                    }
                },
                error: function (xhr) {
                    $('.data-table').html('');
                }
            });
        });

        $('.btn-add-domain').click(function () {
            let domainType = $(this).attr('domain-type');

            if (domainType == "subdomain") {
                $('#changedomainModalLabel').html('Add Domain Name');
                $('.changedomain_button').html('Add Domain Name');
                $('.certificate_inputs').addClass('d-none');
                $('.domain_input').removeClass('d-none');
                $('#operation_type').val('add-domain-name');
            } else {
                $('#changedomainModalLabel').html('Add Certificates');
                $('.changedomain_button').html('Add Certificates');
                $('.certificate_inputs').removeClass('d-none');
                $('.domain_input').addClass('d-none');
                $('#operation_type').val('add-certificates');
            }

            $('#shop_id').val($(this).attr('store-id'));
            $('#changedomainModal').modal('show');
        })


        $('.btn-add-addons').click(function () {
            var store_id=$(this).attr('store-id');
            let url='{{ route("members.settings.addons", ":storeId") }}';

            $('#addAddonModalLabel').html('Add Addons');
            $('#addAddonsModal').modal('show');

            $.ajax({
                type: "GET",
                url: url.replace(':storeId', store_id),
                dataType: "html",
                beforeSend: function () {
                        $('.addon-container')
                                    .html(
                                        '<div class="text-center mt-3 mb-3"><img src="{{ asset('images/ajax-loader-24.gif') }}"></div>'
                                        )
                                    .fadeIn(50);
                },
                success: function (jsonString) {
                    let jsonObject = JSON.parse(jsonString);
                    if (jsonObject.status === 'OK') {
                        $('.addon-container').html(jsonObject.html);
                    }else{
                        $('.addon-container').html(jsonObject.html);
                    }
                },
                error: function (xhr) {
                      $('.addon-container').html('');
                }
            });
        })

        // file validation
        $('input[type="file"]').change(function () {
            // get the input file id and extension
            let file_input_id = $(this).attr('id');
            let file_extension = ($(this).val().split('\\').pop()).split('.').pop();

            // validate files
            if (file_input_id == "private_key_file") {
                if (file_extension != 'key') {
                    key_file_error = 1;
                    $(this).next("span").remove();
                    $(this).after(
                        '<span class="help-block text-danger">invalid file(enter a Key file)</span>'
                    );
                } else {
                    key_file_error = 0;
                    $(this).next("span").remove();
                }


            }

            if (file_input_id == "ssl_certificate_file" || file_input_id == "ca_bundle_file") {
                if (file_extension != "crt") {
                    cert_file_error = 1;
                    $(this).next("span").remove();
                    $(this).after(
                        '<span class="help-block text-danger">invalid file(enter certificate file)</span>'
                    );
                } else {
                    cert_file_error = 0;
                    $(this).next("span").remove();
                }

            }

            if (key_file_error || cert_file_error) {
                $(".changedomain_button").prop("disabled", "true");
            } else {
                $(".changedomain_button").removeAttr("disabled");
            }
        });

    });

</script>

{{-- checkbox scripts --}}
<script>
    $(document).ready(function(){
        // variables
        let package_code="";
        let option_price=0;
        let total_price=0;
        let package_options=[];
        // price formatter
        let formattedPrice = function (price) {
            const formatter = new Intl.NumberFormat('en-IN');
            return formatter.format(price);
        };

        

        // reset variables when modal closes
        $("#addAddonsModal").on("hidden.bs.modal", function(){
            package_options=[];
        });

        // checkboxes functionality for addons
        $('.addon-container').on('change','input[type=checkbox]', function () {
                option_price=parseInt($(this).attr('price'));
                option_id=parseInt($(this).attr('option_id'));
                option_price_class='.option_price_'+option_id;
                total_price=parseInt(($('.table_total_price').html()).replace(/,/g,''));
               
                if($(this).prop('checked')){
                    total_price+=option_price;
                    $('.table_total_price').html(formattedPrice(total_price));
                    $(option_price_class).html(formattedPrice(option_price));
                    $('.checkout_total_price').val(total_price);
                    package_options.push(option_id);
                } else {
                    total_price-=option_price;
                    $('.table_total_price').html(formattedPrice(total_price));
                    $(option_price_class).html(0);
                    $('.checkout_total_price').val(total_price);
                    package_options.splice(package_options.indexOf(option_id), 1);
                }

                $('.option_ids').val(JSON.stringify(package_options));
                
                if(!package_options.length)
                {
                    $(".add-addons-btn").prop("disabled", "true");
                }else{
                    $(".add-addons-btn").removeAttr("disabled");
                }
               
        });
    }); 
</script>
@endsection