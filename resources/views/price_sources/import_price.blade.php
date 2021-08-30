@extends('layouts.app')

<!-- page css -->
@section('css')
    <link href="{{ asset('alertify/alertify.core.css') }}" media="all" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('alertify/alertify.default.css') }}" media="all" rel="stylesheet" type="text/css"/>
@endsection

@section('content-header')
    <h1>Import Price</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('mobiles.index') }}">
                <i class="fa fa-dashboard"></i> Sites
            </a>
        </li>
        <li class="active">Import Price</li>
    </ol>
@endsection

@section('content')

    <div class="row">
        <div class="col-md-6">
            <div class="box box-default" style="min-height: 450px;">

                <div class="box-header with-border">
                    <h3 class="box-title">
                        {{ ucfirst(optional($mobile->Brand)->title) }} {{ $mobile->title }}
                    </h3>

                    <div class="box-tools pull-right">
                        <a href="{{ route('mobiles.index') }}" class="btn btn-sm btn-info"
                           title="Show All Site">
                            <i class="fa fa-th-list" aria-hidden="true"></i>
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

                    <form method="POST" action="#" onsubmit="return false;" accept-charset="UTF-8">
                        <input type="hidden" name="mobile_id" id="mobile_id" value="{{ $mobile->id }}">
                        <div class="form-group {{ $errors->has('url') ? 'has-error' : '' }}">
                            <label for="url">Url</label>
                            <input type="text" name="url" id="url" class="form-control"
                                   minlength="1" maxlength="255" required>
                            {!! $errors->first('url', '<p class="help-block">:message</p>') !!}
                        </div>

                        <div class="form-group {{ $errors->has('url') ? 'has-error' : '' }}">
                            <label for="page_content">Page Content (optional)</label>
                            <textarea class="form-control" name="page_content" id="page_content" rows="10"></textarea>
                        </div>

                        <button type="submit" id="ajaxSubmit" class="btn btn-primary pull-right">Import</button>

                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="nav-tabs-custom" id="priceTable" style="min-height: 450px;">
                {!! $result['htmlPriceTable'] !!}
            </div>
        </div>
    </div>

    <div class="box box-default">

        <div class="box-header with-border">
            <h3 class="box-title">
                Price Sources
            </h3>

            <div class="box-tools pull-right">
                <a href="{{ route('mobiles.index') }}" class="btn btn-sm btn-info"
                   title="Show All Site">
                    <i class="fa fa-th-list" aria-hidden="true"></i>
                </a>
                <a href="{{ route('price_sources.showSisters' ) }}" target="_blank"
                   class="btn btn-sm btn-success"
                   title="Publish Mobile">
                    <i class="fa fa-sitemap" aria-hidden="true"></i>
                </a>
            </div>
        </div>

        <div class="box-body" id="priceSourceTable">
            {!! $result['htmlPriceSourceTable'] !!}
        </div>

    </div>

@endsection


@section('javascript')
    <script src="{{ asset('alertify/alertify.min.js') }}"></script>
    <script src="{{ asset('alertify/clipboard.js') }}"></script>
    <script>
        $(document).ready(function () {
            $('#ajaxSubmit').click(function () {
                let priceUrl = $('#url').val();
                if (priceUrl) {
                    $.ajax({
                        type: 'POST',
                        url: '{{ url('/price-sources') }}',
                        data: {
                            '_token': '{{ csrf_token() }}',
                            'url': priceUrl,
                            'mobile_id': $('#mobile_id').val()
                        },
                        dataType: "text",
                        beforeSend: function () {
                            $('#priceTable, #priceSourceTable')
                                .html('<div class="text-center" style="padding-top: 10px;">' +
                                    '<img src="{{ asset('images/ajax-loader-24.gif') }}">' +
                                    '</div>');
                        },
                        success: function (result) {
                            let jsonResult = JSON.parse(result);
                            $('#priceTable').html(jsonResult['htmlPriceTable']);
                            $('#priceSourceTable').html(jsonResult['htmlPriceSourceTable']);
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
