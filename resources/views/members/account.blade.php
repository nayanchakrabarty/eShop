@extends('layouts.home')

@section('css')
    <link rel="stylesheet" href="{{ asset('themes/innolytic/css/datatable.css') }}">
@endsection

@section('content-header')
    <div class="site-blocks-cover"
         style="background-image: url('{{ asset('images/bg_1.jpg') }}')"></div>
@endsection

@section('content')

    <section id="products" class="section-padding">
        <div class="container">
            @if(Session::has('success_message'))
                <div class="alert alert-success">
                    <span class="glyphicon glyphicon-ok"></span>
                    {!! session('success_message') !!}

                    <button type="button" class="close" data-dismiss="alert" aria-label="close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif

            @if(Session::has('error_message'))
                <div class="alert alert-danger">
                    <span class="fa fa-exclamation-triangle"></span>
                    {!! session('error_message') !!}

                    <button type="button" class="close" data-dismiss="alert" aria-label="close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif

            @if (!empty($errors) && $errors->any())
                <ul class="alert alert-danger">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            @endif

            <div class="section-header text-center">
                <h2 class="section-title wow fadeInDown" data-wow-delay="0.3s">
                    Account
                </h2>
                <div class="shape wow fadeInDown" data-wow-delay="0.3s"></div>
            </div>

            <!-- Info boxes -->
            <div class="row">
                @foreach($setupPackages as $setupPackage)
                    @if ($setupPackage->package_type == 'web')
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-aqua">
                                    <i class="fa fa-globe"></i>
                                </span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Website - {{ ($setupPackage->id + 1000) }}</span>
                                    <span class="info-box-number">
                                        @if ($setupPackage->expired_on)
                                            Expired On: {{ $setupPackage->expired_on }}
                                        @else
                                            {{ $setupPackage->status }}
                                        @endif
                                    </span>
                                    <button class="btn btn-sm btn-success btn-flat btn-subscribe"
                                            id="{{ $setupPackage->id }}"
                                            data-package-type="{{ $setupPackage->package_type }}">
                                        Subscribe Plan
                                    </button>
                                </div>
                            </div>
                        </div>
                    @elseif ($setupPackage->package_type == 'android')
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-green">
                                    <i class="fa fa-android"></i>
                                </span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Android App - {{ ($setupPackage->id + 1000) }}</span>
                                    <span class="info-box-number">
                                        @if ($setupPackage->expired_on)
                                            Expired On: {{ $setupPackage->expired_on }}
                                        @else
                                            {{ $setupPackage->status }}
                                        @endif
                                    </span>
                                    <button class="btn btn-sm btn-success btn-flat btn-subscribe"
                                            id="{{ $setupPackage->id }}"
                                            data-package-type="{{ $setupPackage->package_type }}">
                                        Subscribe Plan
                                    </button>
                                </div>
                            </div>
                        </div>
                    @elseif ($setupPackage->package_type == 'ios')
                    <!-- fix for small devices only -->
                        <div class="clearfix visible-sm-block"></div>

                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-black">
                                    <i class="fa fa-apple"></i>
                                </span>
                                <div class="info-box-content">
                                    <span class="info-box-text">iOS App - {{ ($setupPackage->id + 1000) }}</span>
                                    <span class="info-box-number">
                                        @if ($setupPackage->expired_on)
                                            Expired On: {{ $setupPackage->expired_on }}
                                        @else
                                            {{ $setupPackage->status }}
                                        @endif
                                    </span>
                                    <button class="btn btn-sm btn-success btn-flat btn-subscribe"
                                            id="{{ $setupPackage->id }}"
                                            data-package-type="{{ $setupPackage->package_type }}">
                                        Subscribe Plan
                                    </button>
                                </div>
                            </div>
                        </div>
                    @endif
                @endforeach

            </div>

            <div class="row">
                <div class="col-lg-8">
                    <div class="box box-default">

                        <div class="box-header with-border">
                            <h3 class="box-title">
                                Profile Information
                            </h3>
                        </div>

                        <form method="POST" action="{{ route('members.profileUpdate', $customer->id) }}">
                            {{ csrf_field() }}
                            <input name="_method" type="hidden" value="PUT">

                            <div class="box-body">

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
                                            <label for="name">Full Name</label>
                                            <input class="form-control" name="name" type="text" id="name"
                                                   value="{{ old('name', optional($customer)->name) }}"
                                                   minlength="1" maxlength="255" required>
                                            {!! $errors->first('name', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
                                            <label for="email">Email</label>
                                            <input class="form-control" name="email" type="text" id="email"
                                                   value="{{ old('email', optional($customer)->email) }}"
                                                   minlength="1" maxlength="255" disabled>
                                            {!! $errors->first('email', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group {{ $errors->has('phone') ? 'has-error' : '' }}">
                                            <label for="phone">Mobile</label>
                                            <input class="form-control" name="phone" type="text" id="phone"
                                                   value="{{ old('phone', optional($customer)->phone) }}"
                                                   minlength="1" maxlength="255" required>
                                            {!! $errors->first('phone', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group {{ $errors->has('address') ? 'has-error' : '' }}">
                                            <label for="address">Address</label>
                                            <input class="form-control" name="address" type="text" id="address"
                                                   value="{{ old('address', optional($customer)->address) }}"
                                                   minlength="1" maxlength="255" required>
                                            {!! $errors->first('address', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group {{ $errors->has('country_id') ? 'has-error' : '' }}">
                                            <label for="country_id">Country</label>
                                            <select class="form-control select-admin-lte" id="country_id"
                                                    name="country_id" required>
                                                <option value="">-----Select-----</option>
                                                @foreach ($countries as $key => $title)
                                                    <option value="{{ $key }}"
                                                        {{ old('country_id', optional($customer)->country_id) == $key ? 'selected' : '' }}>
                                                        {{ $title }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            {!! $errors->first('country_id', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group {{ $errors->has('state') ? 'has-error' : '' }}">
                                            <label for="state">State</label>
                                            <input class="form-control" name="state" type="text" id="state"
                                                   value="{{ old('state', optional($customer)->state) }}"
                                                   minlength="1" maxlength="255" required>
                                            {!! $errors->first('state', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group {{ $errors->has('city') ? 'has-error' : '' }}">
                                            <label for="city">City</label>
                                            <input class="form-control" name="city" type="text" id="city"
                                                   value="{{ old('city', optional($customer)->city) }}"
                                                   minlength="1" maxlength="255" required>
                                            {!! $errors->first('city', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group {{ $errors->has('zip') ? 'has-error' : '' }}">
                                            <label for="zip">Post Code</label>
                                            <input class="form-control" name="zip" type="text" id="zip"
                                                   value="{{ old('zip', optional($customer)->zip) }}"
                                                   minlength="1" maxlength="255" required>
                                            {!! $errors->first('zip', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary btn-flat pull-right">Update Profile
                                </button>
                            </div>
                        </form>

                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="box box-default">

                        <div class="box-header with-border">
                            <h3 class="box-title">
                                Change Password
                            </h3>
                        </div>

                        <form method="POST" action="{{ route('members.changePassword', $customer->id) }}">
                            {{ csrf_field() }}
                            <input name="_method" type="hidden" value="PUT">

                            <div class="box-body">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div
                                            class="form-group {{ $errors->has('current_password') ? 'has-error' : '' }}">
                                            <label for="current_password">Current Password</label>
                                            <input class="form-control" name="current_password" id="current_password"
                                                   type="password" minlength="1" maxlength="20" required>
                                            {!! $errors->first('current_password', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group {{ $errors->has('new_password') ? 'has-error' : '' }}">
                                            <label for="new_password">New Password</label>
                                            <input class="form-control" name="new_password" id="new_password"
                                                   type="password" minlength="1" maxlength="20" required>
                                            {!! $errors->first('new_password', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div
                                            class="form-group {{ $errors->has('confirm_password') ? 'has-error' : '' }}">
                                            <label for="confirm_password">Confirm Password</label>
                                            <input class="form-control" name="confirm_password" id="confirm_password"
                                                   type="password" minlength="1" maxlength="20" required>
                                            {!! $errors->first('confirm_password', '<p class="help-block">:message</p>') !!}
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary btn-flat pull-right">
                                    Update Password
                                </button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>

        </div>
    </section>

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

@endsection

@section('javascript')
    <script>

        $(document).ready(function () {
            $('.btn-subscribe').click(function () {
                let setupId = $(this).attr('id');
                let packageType = $(this).data('package-type');

                $('input[name="setup_id"]').val(setupId);
                if (packageType == 'web') {
                    $('#subscriptionModalLabel').html('Website - ' + (1000 + parseInt(setupId)));
                } else if (packageType == 'android') {
                    $('#subscriptionModalLabel').html('Android App - ' + (1000 + parseInt(setupId)));
                } else if (packageType == 'ios') {
                    $('#subscriptionModalLabel').html('iOS App - ' + (1000 + parseInt(setupId)));
                }
                $('#subscriptionModal').modal('show');

                let url = '{{ route("members.subscriptionPlanHistory", ":setupId") }}';

                $.ajax({
                    type: "GET",
                    url: url.replace(':setupId', setupId),
                    dataType: "html",
                    beforeSend: function () {
                        $('.data-table')
                            .html('<div class="text-center mt-3 mb-3"><img src="{{ asset('images/ajax-loader-24.gif') }}"></div>')
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
        });

    </script>
@endsection

