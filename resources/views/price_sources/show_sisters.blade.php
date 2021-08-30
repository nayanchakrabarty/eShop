@extends('layouts.app')

<!-- page css -->
@section('css')
    <link href="{{ asset('alertify/alertify.core.css') }}" media="all" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('alertify/alertify.default.css') }}" media="all" rel="stylesheet" type="text/css"/>
@endsection

@section('content-header')
    <h1>Sister Sites</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('mobiles.index') }}">
                <i class="fa fa-dashboard"></i> Sites
            </a>
        </li>
        <li class="active">Sisters</li>
    </ol>
@endsection

@section('content')

    <div class="box box-default">

        <div class="box-header with-border">
            <h3 class="box-title">
                Find Sister Sites
            </h3>

            <div class="box-tools pull-right">
                <a href="javascript: window.close();" class="btn btn-box-tool"
                   title="Show All Site">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </a>
            </div>
        </div>


        <div class="box-body">
            @if ($errors->any())
                <ul class="alert alert-danger">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            @endif

            <form method="POST" action="#" onsubmit="return false;" class="form-inline">
                <div class="form-group col-lg-12 {{ $errors->has('url') ? 'has-error' : '' }}">
                    <label for="url">Site Url</label>
                    <div class="input-group col-lg-10">
                        <input class="form-control" type="text" name="url" id="url" required>
                        <span class="input-group-btn">
                            <button type="submit" id="ajaxSubmit" class="btn btn-primary btn-flat">Search</button>
                        </span>
                    </div>
                </div>
            </form>

            <div class="clearfix"></div>


            <br><br>

            <div id="sisterSiteList" class="text-center"></div>
            <div class="clearfix"></div>
        </div>

    </div>

@endsection

@section('javascript')
    <script src="{{ asset('alertify/alertify.min.js') }}"></script>
    <script src="{{ asset('alertify/clipboard.js') }}"></script>
    <script>
        $(document).ready(function () {
            $('#ajaxSubmit').click(function () {
                let siteUrl = $('#url').val();
                if (siteUrl) {
                    $.ajax({
                        type: 'POST',
                        url: '{{ url('/price-sources/sister-sites') }}',
                        data: {
                            '_token': '{{ csrf_token() }}',
                            'url': siteUrl
                        },
                        dataType: "text",
                        beforeSend: function() {
                            $('#sisterSiteList').html('<img src="{{ asset('images/ajax-loader-24.gif') }}">');
                        },
                        success: function (result) {
                            $('#sisterSiteList').html(result);
                        }
                    });
                }
            });
        });

        function copyToClipboard(text) {
            clipboard.copy(text).then(
                function () {
                    alertify.success('Link copied Successfully. You can paste now anywhere.');
                },
                function (err) {
                    console.log("failure", err);
                }
            );
        }
    </script>

@endsection
