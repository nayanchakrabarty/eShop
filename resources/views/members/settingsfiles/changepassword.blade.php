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
                <div class="box box-default">

                    <div class="box-header with-border">
                        <h3 class="box-title">
                            Change Password
                        </h3>
                    </div>

                    <form method="POST" action="{{ route('members.changePassword', $customer->id) }}">
                        {{ csrf_field() }}
                        <input name="_method" type="hidden" value="PUT">
                        <div class="box-body d-flex flex-column justify-content-center align-items-center">

                            <div class="col-md-6">
                                <div class="col-md-12">
                                    <div class="form-group {{ $errors->has('current_password') ? 'has-error' : '' }}">
                                        <label for="current_password">Current Password</label>
                                        <input class="form-control" name="current_password" id="current_password"
                                            type="password" minlength="1" maxlength="20" required>
                                        {!! $errors->first('current_password', '<p class="help-block">:message</p>') !!}
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="col-md-12">
                                    <div class="form-group {{ $errors->has('new_password') ? 'has-error' : '' }}">
                                        <label for="new_password">New Password</label>
                                        <input class="form-control" name="new_password" id="new_password"
                                            type="password" minlength="1" maxlength="20" required>
                                        {!! $errors->first('new_password', '<p class="help-block">:message</p>') !!}
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="col-md-12">
                                    <div class="form-group {{ $errors->has('confirm_password') ? 'has-error' : '' }}">
                                        <label for="confirm_password">Confirm Password</label>
                                        <input class="form-control" name="confirm_password" id="confirm_password"
                                            type="password" minlength="1" maxlength="20" required>
                                        {!! $errors->first('confirm_password', '<p class="help-block">:message</p>') !!}
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer text-center col-md-6">
                                <button type="submit" class="btn btn-primary btn-flat pull-right">
                                    Update Password
                                </button>
                            </div>
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