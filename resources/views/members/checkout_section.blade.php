@section('css')
<link rel="stylesheet" href="{{ asset('themes/innolytic/css/datatable.css') }}">
@endsection

<!-- Price Section -->
<section class="ftco-section ftco-section-2 bg-light" id="navigationTabs">
    <div class="container">
        @if(Session::has('error_message'))
        <div class="alert alert-danger">
            <span class="fa fa-exclamation-triangle"></span>
            {!! session('error_message') !!}

            <button type="button" class="close" data-dismiss="alert" aria-label="close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        @endif

        <div class="section-header text-center">
            <h2 class="section-title wow fadeInDown" data-wow-delay="0.3s">
                Checkout
            </h2>
            <div class="shape wow fadeInDown" data-wow-delay="0.3s"></div>
        </div>
        <div class="row">
            <div class="col-lg-4 mb-5 mb-md-0">
                <div class="tabulation">
                    <div class="tab-content rounded mt-md-3">
                        <div class="tab-pane container p-4 active" id="website">
                            <h5 class="text-center">Billing Information</h5>

                            <form id="billingAddress" action="{{ route('sslcommerz.pay') }}" method="POST">
                                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                                @if (Request::get('theme'))
                                <input type="hidden" name="theme" value="{{ Request::get('theme') }}" />
                                @endif
                                @if (Request::get('domain'))
                                <input type="hidden" name="domain" value="1" />
                                @endif
                                @if (Request::get('logo'))
                                <input type="hidden" name="logo" value="1" />
                                @endif
                                @if (Request::get('ssl'))
                                <input type="hidden" name="ssl" value="1" />
                                @endif
                                @if (Request::get('subscription_plan'))
                                <input type="hidden" name="subscription_plan"
                                    value="{{ Request::get('subscription_plan') }}" />
                                @endif
                                @if (Request::get('subscription_type'))
                                <input type="hidden" name="subscription_type"
                                    value="{{ Request::get('subscription_type') }}" />
                                @endif
                                @if (Request::get('setup_id'))
                                <input type="hidden" name="setup_id" value="{{ Request::get('setup_id') }}" />
                                @endif

                                <input type="hidden" name="product_name" value="{{ $packageName }}" />
                                <input type="hidden" name="store_id" value="{{ $store_id }}" />
                                <input type="hidden" name="payment_method" value="" />
                                <input type="hidden" name="package_info" value="{{$package_detail}}" />
                                <input type="hidden" name="package_options" value="" />
                                <input type="hidden" name="package_total_price" value="" />
                                <input type="hidden" name="paid_amount"
                                    value="{{ App\Helpers\CheckoutHelper::cartPaidAmount(Request::all()) }}" />

                                <input type="hidden" name="mb_mobile" value="" />
                                <input type="hidden" name="mb_transaction_id" value="" />
                                <input type="hidden" name="mb_amount" value="" />

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input class="form-control" id="full_name" name="full_name"
                                                value="{{ $customer->name }}" placeholder="Full Name"
                                                aria-label="full_name" required data-error="Full Name is required">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input name="mobile" id="mobile" class="form-control"
                                                value="{{ $customer->phone }}" placeholder="Mobile" aria-label="Mobile"
                                                required data-error="Mobile field is required">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input name="email" id="email" class="form-control"
                                                value="{{ $customer->email }}" placeholder="Email" aria-label="Email"
                                                required data-error="Email field is required">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input id="address" name="address" class="form-control"
                                                value="{{ $customer->address }}" placeholder="Address"
                                                aria-label="Address" required data-error="Address field is required">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <select name="country" id="Country" class="form-control"
                                                aria-label="Country" style="padding: .375rem .50rem;">
                                                @foreach($countries as $country)
                                                <option value="{{ $country->country_name }}"
                                                    {{ $country->id == $customer->country_id ? ' selected' : '' }}>
                                                    {{ $country->country_name }}
                                                </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input name="state" id="state" class="form-control"
                                                value="{{ $customer->state }}" placeholder="State" aria-label="State"
                                                required data-error="State field is required">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input name="city" id="city" class="form-control"
                                                value="{{ $customer->city }}" placeholder="City" aria-label="City"
                                                required data-error="City field is required">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input name="zip" id="zip" class="form-control" value="{{ $customer->zip }}"
                                                placeholder="Zip" aria-label="Zip" required
                                                data-error="Zip field is required">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                </div>
                            </form>

                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-8 mb-5 mb-md-0">
                <div class="tabulation">
                    <div class="tab-content rounded mt-md-3">
                        <div class="tab-pane container p-4 active" id="website">
                            <h5 class="text-center">{{ $packageName }}</h5>
                            <div class="table-responsive">

                                @if (Request::get('subscription_type') == 'web')
                                <table class="table table-bordered">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>SL.</th>
                                            <th>Description</th>
                                            <th class="col-options">Selected Item</th>
                                            <th class="col-duration">Validity</th>
                                            <th class="col-price">Price (BDT)</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1.</td>
                                        <td>
                                            <h6>Website Installation Package</h6>
                                            <ul class="description">
                                                <li>1 Premium Theme from pool</li>
                                                <li>3 GB SSD hosting</li>
                                                <li>BKash + Rocket Integration</li>
                                                <li>5 Email accounts</li>
                                                <li>Payment gateway Integration</li>
                                                <li>Site Setup & Configuration</li>
                                            </ul>
                                        </td>
                                        <td>
                                            {{ $theme }}
                                        </td>
                                        <td>Subscription</td>
                                        <td class="text-right">
                                            {{ App\Helpers\CheckoutHelper::itemPrice('site_setup_fee', -1) }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2.</td>
                                        <td>1 Logo for website</td>
                                        <td>
                                            @if (Request::get('logo'))
                                            Included
                                            @else
                                            Not Included
                                            @endif
                                        </td>
                                        <td>Lifetime</td>
                                        <td class="text-right logo-price">
                                            {{ App\Helpers\CheckoutHelper::itemPrice('logo', Request::get('logo')) }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3.</td>
                                        <td>1 Domain name from namecheap</td>
                                        <td>
                                            @if (Request::get('domain'))
                                            Included
                                            @else
                                            Not Included
                                            @endif
                                        </td>
                                        <td>1 Year</td>
                                        <td class="text-right domain-price">
                                            {{ App\Helpers\CheckoutHelper::itemPrice('domain', Request::get('domain')) }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4.</td>
                                        <td>SSL Certificate</td>
                                        <td>
                                            @if (Request::get('ssl'))
                                            Included
                                            @else
                                            Not Included
                                            @endif
                                        </td>
                                        <td>1 Year</td>
                                        <td class="text-right ssl-price">
                                            {{ App\Helpers\CheckoutHelper::itemPrice('ssl', Request::get('ssl')) }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>5.</td>
                                        <td>Monthly Charges</td>
                                        <td>
                                            @if (Request::get('subscription_plan'))
                                            {{ Request::get('subscription_plan') }} Months Plan
                                            @else
                                            Not Included
                                            @endif
                                        </td>
                                        <td>Monthly</td>
                                        <td class="text-right subscription-cost">
                                            {{ App\Helpers\CheckoutHelper::itemPrice('subscription_plan', Request::get('subscription_plan'), 'web') }}
                                        </td>
                                    </tr>
                                    <tfoot>
                                        <tr>
                                            <th colspan="4" class="text-right">Total</th>
                                            <th id="totalSum" class="text-right">
                                                {!! App\Helpers\CheckoutHelper::cartHtmlPrice(Request::all()) !!}
                                            </th>
                                        </tr>
                                    </tfoot>
                                </table>
                                @elseif (Request::get('subscription_type') == $package_detail->package_code)
                                <table class="table table-bordered">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>SL.</th>
                                            <th>Description</th>
                                            <th class="col-duration">Validity</th>
                                            <th class="col-price">Price (BDT)</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1.</td>
                                        <td>
                                            <h5>{{$package_detail->title}} Single License</h5>
                                        </td>
                                        <td style="text-transform:capitalize">{{$package_detail->availability}}</td>
                                        <td class="text-right checkout_package_base_price">
                                            {{ number_format($package_detail->base_price) }}
                                        </td>
                                    </tr>
                                    @foreach ($package_detail->packageOptions()->get() as $package_option)
                                    <tr>
                                        <td></td>
                                        <td class="description">
                                            @if($package_option->type == "optional")
                                            <input type="checkbox"
                                                package_code="{{$package_option->package->package_code}}"
                                                price="{{$package_option->price}}" class="flat-red"
                                                option_id="{{$package_option->id}}" @if(!is_null($option_ids))
                                                {{in_array($package_option->id,$option_ids)? "checked":""}} @endif
                                                style="vertical-align: middle;">
                                            <span>
                                                {{$package_option->title}}(BDT
                                                {{number_format($package_option->price)}})
                                            </span>

                                            @else
                                            {{$package_option->title}}
                                            @endif
                                        </td>
                                        <td></td>
                                        <td class="text-right option_price_{{$package_option->id}}">
                                            @if($package_option->type == "optional")
                                            @if(!is_null($option_ids))
                                            @if(in_array($package_option->id,$option_ids))
                                            {{number_format($package_option->price)}}
                                            @else
                                            {{number_format('0')}}
                                            @endif
                                            @endif
                                            @else
                                            {{number_format($package_option->price)}}
                                            @endif

                                        </td>
                                    </tr>
                                    @endforeach
                                    <tfoot>
                                        <tr>
                                            <th colspan="3" class="text-right">Total</th>
                                            <th class="text-right checkout_package_total_price">
                                                {{ number_format($package_total_price) }}
                                            </th>
                                        </tr>
                                    </tfoot>
                                </table>
                                @elseif (Request::get('subscription_type') == 'addon')
                                <table class="table table-bordered">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>SL.</th>
                                            <th>Description</th>
                                            <th class="col-duration">Validity</th>
                                            <th class="col-price">Price (BDT)</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1.</td>
                                        <td>
                                            <h5>{{$package_detail->title}} Single License</h5>
                                        </td>
                                        <td style="text-transform:capitalize">
                                            {{$package_detail->availability}}</td>
                                        <td></td>
                                    </tr>
                                    @foreach ($package_detail->packageOptions as $package_option)
                                    <tr>
                                        <td></td>
                                        <td class="description">
                                            <input type="checkbox" id="addon_{{$package_option->id}}"
                                                price="{{$package_option->price}}" class="flat-red"
                                                option_id="{{$package_option->id}}" @if(!is_null($option_ids))
                                                {{in_array($package_option->id,$option_ids)? "checked":""}} @endif
                                                style="vertical-align: middle;">
                                            <label for="addon_{{$package_option->id}}" style="cursor:pointer">
                                                {{$package_option->title}}(BDT
                                                {{number_format($package_option->price)}})
                                            </label>
                                        </td>
                                        <td></td>
                                        <td class="text-right option_price_{{$package_option->id}}">
                                            @if(!is_null($option_ids))
                                            @if(in_array($package_option->id,$option_ids))
                                            {{number_format($package_option->price)}}
                                            @else
                                            {{number_format('0')}}
                                            @endif
                                            @endif
                                        </td>
                                    </tr>
                                    @endforeach
                                    <tfoot>
                                        <tr>
                                            <th colspan="3" class="text-right">Total</th>
                                            <th class="text-right checkout_package_total_price">
                                                {{ number_format($package_total_price) }}
                                            </th>
                                        </tr>
                                    </tfoot>
                                </table>
                                @endif
                            </div>

                            <button class="btn btn-primary btn-flat pull-right btn-pay-now" data-payment-method="bank">
                                Pay with Bank
                            </button>

                            <button class="btn btn-danger btn-flat pull-right btn-pay-now mr-3"
                                data-payment-method="SSLCommerz">
                                Pay with SSLCommerz
                            </button>

                            <button class="btn btn-success btn-flat pull-right btn-pay-now mr-3"
                                data-payment-method="bKash" type="button">
                                Pay with bKash
                            </button>

                            <div class="clearfix" style="margin: 5px 0;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Modal -->
<div class="modal fade" id="modalMobileTransaction" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="labelMobileTransaction">BKash Transaction Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="modalBodyMobileTransaction">
                @include('members.mb_transaction.create', ['mbTransaction' => null,])
            </div>
        </div>
    </div>
</div>

@section('javascript')
<script>
    $(document).ready(function () {
            $('.btn-pay-now').click(function () {
                let paymentMethod = $(this).data('payment-method');
                $('input[name="payment_method"]').val(paymentMethod);
                let billingAddressObj = $("#billingAddress");
                // console.log(billingAddressObj);
                if (paymentMethod == 'bKash' && billingAddressObj.valid()) {
                    $('#formMbTransaction')[0].reset();
                    $('#modalMobileTransaction').modal('show');
                } else {
                    billingAddressObj.validator().on("submit").submit();
                }
            });

            $('.btn-mb-transaction').click(function () {
                if ($('#formMbTransaction').valid()) {
                    let senderMobile = $('#formMbTransaction input[name="sender_mobile"]').val();
                    let amount = $('#formMbTransaction input[name="amount"]').val();
                    let transactionId = $('#formMbTransaction input[name="transaction_id"]').val();

                    $('input[name="mb_mobile"]').val(senderMobile);
                    $('input[name="mb_amount"]').val(amount);
                    $('input[name="mb_transaction_id"]').val(transactionId);

                    $("#billingAddress").validator().on("submit").submit();
                }
            });
        });
</script>

<script>
    let option_price=0;
    let total_price=0;
    let package_options=[];
    let subscription_type="{{ Request::get('subscription_type') }}";


    $('input[type=checkbox]:checked').each(function() {
        package_options.push(parseInt($(this).attr('option_id')));
    });

    $('input[name="package_options"').val(JSON.stringify(package_options));
    $('input[name="package_total_price"').val({{$package_total_price}});

    $(document).ready(function (){
        let formattedPrice = function (price) {
            const formatter = new Intl.NumberFormat('en-IN');
            return formatter.format(price);
        };

        check_options();
        // checkboxes functionality
        $('input[type=checkbox]').change(function() {
                package_code=$(this).attr('package_code');
                option_price=parseInt($(this).attr('price'));
                option_id=parseInt($(this).attr('option_id'));
                total_price_classname='.checkout_package_total_price';

                total_price=parseInt(($(total_price_classname).html()).replace(/,/g,''));
                
                if($(this).prop('checked')){
                    total_price+=option_price;
                    $(total_price_classname).html(formattedPrice(total_price));
                    $('.option_price_'+option_id).html(formattedPrice(option_price));
                    package_options.push(option_id);
                } else {
                    total_price-=option_price;
                    $(total_price_classname).html(formattedPrice(total_price));
                    $('.option_price_'+option_id).html(formattedPrice(0));
                    package_options.splice(package_options.indexOf(option_id), 1);
                }

                $('input[name="package_options"').val(JSON.stringify(package_options));
                $('input[name="package_total_price"').val(total_price);


                if(!package_options.length && subscription_type=='addon')
                {
                    $(".btn-pay-now").prop("disabled", "true");
                }else{
                    $(".btn-pay-now").removeAttr("disabled");
                }
        });
        
                
    });

    // check if any options is selected or not for addons
    function check_options()
    {
        if(!package_options.length && subscription_type=='addon')
        {
            $(".btn-pay-now").prop("disabled", "true");
        }else{
            $(".btn-pay-now").removeAttr("disabled");
        }
    }
</script>
@endsection