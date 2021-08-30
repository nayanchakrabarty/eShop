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
</style>
@endsection

@section('content-header')
<div class="site-blocks-cover" style="background-image: url('{{ asset('images/bg_1.jpg') }}')"></div>
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
                {{-- profile section --}}
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
                                            value="{{ old('name', optional($customer)->name) }}" minlength="1"
                                            maxlength="255" required>
                                        {!! $errors->first('name', '<p class="help-block">:message</p>') !!}
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
                                        <label for="email">Email</label>
                                        <input class="form-control" name="email" type="text" id="email"
                                            value="{{ old('email', optional($customer)->email) }}" minlength="1"
                                            maxlength="255" disabled>
                                        {!! $errors->first('email', '<p class="help-block">:message</p>') !!}
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group {{ $errors->has('phone') ? 'has-error' : '' }}">
                                        <label for="phone">Mobile</label>
                                        <input class="form-control" name="phone" type="text" id="phone"
                                            value="{{ old('phone', optional($customer)->phone) }}" minlength="1"
                                            maxlength="255" required>
                                        {!! $errors->first('phone', '<p class="help-block">:message</p>') !!}
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group {{ $errors->has('address') ? 'has-error' : '' }}">
                                        <label for="address">Address</label>
                                        <input class="form-control" name="address" type="text" id="address"
                                            value="{{ old('address', optional($customer)->address) }}" minlength="1"
                                            maxlength="255" required>
                                        {!! $errors->first('address', '<p class="help-block">:message</p>') !!}
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group {{ $errors->has('country_id') ? 'has-error' : '' }}">
                                        <label for="country_id">Country</label>
                                        <select class="form-control select-admin-lte" id="country_id" name="country_id"
                                            required>
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
                                            value="{{ old('state', optional($customer)->state) }}" minlength="1"
                                            maxlength="255" required>
                                        {!! $errors->first('state', '<p class="help-block">:message</p>') !!}
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group {{ $errors->has('city') ? 'has-error' : '' }}">
                                        <label for="city">City</label>
                                        <input class="form-control" name="city" type="text" id="city"
                                            value="{{ old('city', optional($customer)->city) }}" minlength="1"
                                            maxlength="255" required>
                                        {!! $errors->first('city', '<p class="help-block">:message</p>') !!}
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group {{ $errors->has('zip') ? 'has-error' : '' }}">
                                        <label for="zip">Post Code</label>
                                        <input class="form-control" name="zip" type="text" id="zip"
                                            value="{{ old('zip', optional($customer)->zip) }}" minlength="1"
                                            maxlength="255" required>
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
        </div>
    </div>
</section>

@endsection

@section('javascript')
@endsection