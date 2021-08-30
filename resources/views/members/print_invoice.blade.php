@extends('layouts.pdf')

@section('content')
<div class="row">
    <div class="col-lg-6">
        <h2>{{ config('settings.SITE_NAME') }}</h2>
        <h6>{!! config('settings.SITE_ADDRESS') !!}</h6>
        <h6>{{ config('settings.SITE_PHONE') }}</h6>
        <h6>{{ config('settings.SITE_EMAIL') }}</h6>
    </div>
    <div class="col-lg-6 text-right">
        <h2>
            <img style="vertical-align: top" src="{{ asset('storage/sites/' . config('settings.SITE_LOGO')) }}"
                class="pdf-logo" alt="Site Logo">
        </h2>
        Invoice No: {{ $order->id + 10000 }}<br>
        Date: {{ date('F j, Y') }}
    </div>
</div>

<h3 class="pdf-title">{{ $order->package_name }}</h3>

@if ($order->package_type == 'web')
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
                <li>Woocommerce or Opencart premium theme from our theme pool</li>
                <li>3 GB SSD hosting</li>
                <li>BKash + Rocket Integration</li>
                <li>5 Email accounts</li>
                <li>3rd party payment gateway (Sslcommerz / Amarpay) Integration</li>
                <li>Site Setup & Configuration</li>
            </ul>
        </td>
        <td>
            {{ $shoppingCart['theme'] }}
        </td>
        <td>Subscription</td>
        <td class="text-right">
            {{ number_format(config('settings.SITE_SETUP_FEE'), 2) }}
        </td>
    </tr>
    <tr>
        <td>2.</td>
        <td>
            <h6>1 Logo for website</h6>
        </td>
        <td>
            @if (!empty($shoppingCart['logo']))
            Included
            @else
            Not Included
            @endif
        </td>
        <td>Lifetime</td>
        <td class="text-right">
            @if (!empty($shoppingCart['logo']))
            {{ number_format($shoppingCart['logo'], 2) }}
            @else
            0.00
            @endif
        </td>
    </tr>
    <tr>
        <td>3.</td>
        <td>
            <h6>1 Domain name from namecheap</h6>
        </td>
        <td>
            @if (!empty($shoppingCart['domain']))
            Included
            @else
            Not Included
            @endif
        </td>
        <td>1 Year</td>
        <td class="text-right domain-price">
            @if (!empty($shoppingCart['domain']))
            {{ number_format($shoppingCart['domain'], 2) }}
            @else
            0.00
            @endif
        </td>
    </tr>
    <tr>
        <td>4.</td>
        <td>
            <h6>SSL Certificate</h6>
        </td>
        <td>
            @if (!empty($shoppingCart['ssl']))
            Included
            @else
            Not Included
            @endif
        </td>
        <td>1 Year</td>
        <td class="text-right ssl-price">
            @if (!empty($shoppingCart['ssl']))
            {{ number_format($shoppingCart['ssl'], 2) }}
            @else
            0.00
            @endif
        </td>
    </tr>
    <tr>
        <td>5.</td>
        <td>
            <h6>Monthly Charges</h6>
        </td>
        <td>
            @if (empty($order->subscription_plan))
            Month-End
            @else
            {{ $order->subscription_plan }} Months Plan
            @endif
        </td>
        <td>Monthly</td>
        <td class="text-right">
            {{ number_format($order->subscription_plan * $order->monthly_charge, 2) }}
        </td>
    </tr>
    <tfoot>
        <tr>
            <th colspan="4" class="text-right">Total</th>
            <th class="text-right">
                @if ($order['discount'] > 0)
                <del>{{ number_format($order['total_amount'] + $order['discount'], 2) }}</del>
                {{ number_format($order['total_amount'], 2) }}
                @else
                {{ number_format($order['total_amount'], 2) }}
                @endif
            </th>
        </tr>
    </tfoot>
</table>

<br><br>
<div class="hints-label">Note:</div>
<div class="hints">
    1. You have to renew Domain & SSL Certificate if you choose monthly plan but if you choose yearly plan then
    this cost is free.<br>
    2. If you decide to use third party payment gateway then you have to purchase 3rd party payment gateway from
    corresponding authority like Sslcommerz or Amarpay. As soon as you purchase we will integrate in your
    system.
</div>

@elseif ($order->package_type == 'android')
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
            <h5>Android Application Installation Package</h5>
            <ul class="description">
                <li>Firebase Push Notification Integration</li>
                <li>Firebase SMS Login Integration</li>
                <li>Google Login Integration</li>
                <li>Facebook Login Integration</li>
                <li>1 Logo and 1 Cover for App</li>
                <li>Publish App on Play Store</li>
                <li>Payment Method Integration</li>
            </ul>
        </td>
        <td>Subscription</td>
        <td class="text-right">
            {{ number_format(config('settings.ANDROID_SETUP_FEE'), 2) }}
        </td>
    </tr>
    <tr>
        <td>2.</td>
        <td>
            Monthly Charges
            @if (empty($order->subscription_plan))
            (Month-End)
            @else
            ({{ $order->subscription_plan }} Months Plan)
            @endif
        </td>
        <td>Monthly</td>
        <td class="text-right">
            {{ number_format($order->subscription_plan * $order->monthly_charge, 2) }}
        </td>
    </tr>
    <tfoot>
        <tr>
            <th colspan="3" class="text-right">Total</th>
            <th class="text-right">
                @if ($order['discount'] > 0)
                <del>{{ number_format($order->paid_amount + $order->discount, 2) }}</del>
                {{ number_format($order->paid_amount, 2) }}
                @else
                {{ number_format($order->paid_amount, 2) }}
                @endif
            </th>
        </tr>
    </tfoot>
</table>

<br><br>
<div class="hints-label">Note:</div>
<div class="hints">
    1. You have to purchase or own a play store account from google to publish your app.<br>
    2. If you decide to use third party payment gateway then you have to purchase 3rd party payment gateway from
    corresponding authority like Sslcommerz or Amarpay. As soon as you purchase we will integrate in your
    system.
</div>

@elseif ($order->package_type == 'ios')
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
            <h6>iOS Application Installation Package</h6>
            <ul class="description">
                <li>Firebase Push Notification Integration</li>
                <li>Firebase SMS Login Integration</li>
                <li>Google Login Integration</li>
                <li>Facebook Login Integration</li>
                <li>1 Logo and 1 Cover for App</li>
                <li>Publish App on Apple Store</li>
                <li>Payment Method Integration</li>
            </ul>
        </td>
        <td>Subscription</td>
        <td class="text-right">
            {{ number_format(config('settings.IOS_SETUP_FEE'), 2) }}
        </td>
    </tr>
    <tr>
        <td>2.</td>
        <td>
            Monthly Charges
            @if (empty($order->subscription_plan))
            (Month-End)
            @else
            ({{ $order->subscription_plan }} Months Plan)
            @endif
        </td>
        <td>Monthly</td>
        <td class="text-right">
            {{ number_format($order->subscription_plan * $order->monthly_charge, 2) }}
        </td>
    </tr>
    <tfoot>
        <tr>
            <th colspan="3" class="text-right">Total</th>
            <th class="text-right">
                @if ($order['discount'] > 0)
                <del>{{ number_format($order->paid_amount + $order->discount, 2) }}</del>
                {{ number_format($order->paid_amount, 2) }}
                @else
                {{ number_format($order->paid_amount, 2) }}
                @endif
            </th>
        </tr>
    </tfoot>
</table>

<br><br>
<div class="hints-label">Note:</div>
<div class="hints">
    1. You have to purchase or own a Apple store account from Apple to publish your app.<br>
    2. If you decide to use third party payment gateway then you have to purchase 3rd party payment gateway from
    corresponding authority like Sslcommerz or Amarpay. As soon as you purchase we will integrate in your
    system.
</div>

@elseif ($order->package_type == 'web_lifetime_plan')
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
            <h5>Website Package Single License</h5>
            <ul class="description">
                <li>Website Source Code</li>
                <li>Installation + Site Setup</li>
                <li>1 Year Support (Only bug fixing & update)</li>
                <li>10 GB SSD Hosting (1 Year)</li>
                <li>1 Domain Name (1 Year)</li>
                <li>1 SSL Certificate (1 Year)</li>
                <li>1 Logo for Website</li>
                <li>Payment Method Integration</li>
            </ul>
        </td>
        <td>Lifetime</td>
        <td class="text-right">
            {{ number_format($order->paid_amount, 2) }}
        </td>
    </tr>
    <tfoot>
        <tr>
            <th colspan="3" class="text-right">Total</th>
            <th class="text-right">
                @if ($order['discount'] > 0)
                <del>{{ number_format($order->paid_amount + $order->discount, 2) }}</del>
                {{ number_format($order->paid_amount, 2) }}
                @else
                {{ number_format($order->paid_amount, 2) }}
                @endif
            </th>
        </tr>
    </tfoot>
</table>

<br><br>
<div class="hints-label">Note:</div>
<div class="hints">
    1. If you decide to use third party payment gateway then you have to purchase 3rd party payment gateway from
    corresponding authority like Sslcommerz or Amarpay. As soon as you purchase we will integrate in your
    system.
</div>

@elseif ($order->package_type == 'mobile_lifetime_plan')
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
            <h5>Android & iOS Package Single License</h5>
            <ul class="description">
                <li>Android + iOS Source Code</li>
                <li>Publish app on Play Store</li>
                <li>Publish app on Apple Store</li>
                <li>1 Year Support (Only bug fixing & update)</li>
                <li>1 Logo and 1 Cover for App</li>
                <li>Facebook + Google + SMS login Integration</li>
                <li>Firebase Push Notification Integration</li>
                <li>Payment Method Integration</li>
            </ul>
        </td>
        <td>Lifetime</td>
        <td class="text-right">
            {{ number_format($order->paid_amount, 2) }}
        </td>
    </tr>
    <tfoot>
        <tr>
            <th colspan="3" class="text-right">Total</th>
            <th class="text-right">
                @if ($order['discount'] > 0)
                <del>{{ number_format($order->paid_amount + $order->discount, 2) }}</del>
                {{ number_format($order->paid_amount, 2) }}
                @else
                {{ number_format($order->paid_amount, 2) }}
                @endif
            </th>
        </tr>
    </tfoot>
</table>

<br><br>
<div class="hints-label">Note:</div>
<div class="hints">
    1. You have to purchase or own Play/Apple store account to publish your app.<br>
    2. If you decide to use third party payment gateway then you have to purchase 3rd party payment gateway from
    corresponding authority like Sslcommerz or Amarpay. As soon as you purchase we will integrate in your
    system.
</div>

@elseif (in_array($order->package_type, ['web_plan', 'android_plan', 'ios_plan']))
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
            Monthly Charges
            @if ($order->subscription_plan)
            ({{ $order->subscription_plan }} Months Plan)
            @else
            (Not Included)
            @endif
        </td>
        <td>Monthly</td>
        <td class="text-right">
            {{ number_format($order->subscription_plan * $order->monthly_charge, 2) }}
        </td>
    </tr>
    <tfoot>
        <tr>
            <th colspan="3" class="text-right">Total</th>
            <th class="text-right">
                {{ number_format($order->subscription_plan * $order->monthly_charge, 2) }}
            </th>
        </tr>
    </tfoot>
</table>
@else
@php
$package_detail=App\Models\Package::find($shoppingCart['package_id']);
$option_ids=json_decode($shoppingCart['package_options']);
if($order->package_type=='addon')
{
$addon_carts=$shoppingCart['addons'];
}
@endphp
<table class="table table-bordered">
    <thead class="thead-light">
        <tr>
            <th>SL.</th>
            <th>Description</th>
            <th class="col-duration">Validity</th>
            <th class="col-price">Price (BDT)</th>
        </tr>
    </thead>
    {{-- addon type invoice --}}
    @if($order->package_type=='addon')
    <tr>
        <td>1.</td>
        <td>
            <h6>{{$order->package_name}}</h6>
        </td>
        <td style="text-transform: capitalize">
            {{$package_detail->availability}}
        </td>
        <td class="text-right">
        </td>
    </tr>
    @foreach($addon_carts as $addon_cart)
    <tr>
        <td></td>
        <td>
            <h6 style="text-transform: capitalize">{{$addon_cart['title']}}</h6>
        </td>
        <td></td>
        <td class="text-right">
            {{number_format($addon_cart['price'])}}
        </td>
    </tr>
    @endforeach
    {{-- non addon type invoice --}}
    @else
    <tr>
        <td>1.</td>
        <td>
            <h6>{{$order->package_name}}</h6>
        </td>
        <td style="text-transform: capitalize">
            {{$package_detail->availability}}
        </td>
        <td class="text-right">
            {{$package_detail->base_price}}
        </td>
    </tr>
    @foreach($package_detail->packageOptions()->get() as $package_option)
    <tr>
        <td></td>
        <td>
            <h6 style="text-transform: capitalize">{{$package_option->title}}</h6>
        </td>
        <td></td>
        <td class="text-right">
            @if($package_option->type == "optional")
            @if(!is_null($option_ids))
            @if(in_array($package_option->id,$option_ids))
            {{number_format($package_option->price,2)}}
            @else
            {{number_format('0',2)}}
            @endif
            @endif
            @else
            {{number_format($package_option->price,2)}}
            @endif
        </td>
    </tr>
    @endforeach
    @endif

    <tfoot>
        <tr>
            <th colspan="3" class="text-right">Total</th>
            <th class="text-right">
                @if ($order['discount'] > 0)
                <del>{{ number_format($order['paid_amount'] + $order['discount'], 2) }}</del>
                {{ number_format($order['paid_amount'], 2) }}
                @else
                {{ number_format($order['total_amount'], 2) }}
                @endif
            </th>
        </tr>
    </tfoot>
</table>

<br><br>
<div class="hints-label">Note:</div>
<div class="hints">
    1. You have to renew Domain & SSL Certificate if you choose monthly plan but if you choose yearly plan then
    this cost is free.<br>
    2. If you decide to use third party payment gateway then you have to purchase 3rd party payment gateway from
    corresponding authority like Sslcommerz or Amarpay. As soon as you purchase we will integrate in your
    system.
</div>
@endif

@endsection