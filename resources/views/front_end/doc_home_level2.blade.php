@extends('layouts.help_center')

@section('content-header')
    <header class="content-header container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="content-max-width">{{ optional($selectedProduct)->title }} Documentation</h1>
            </div>
        </div>
    </header>
@endsection

@section('content')
    <div class="content container-fluid">
        {!! $articleListWithCategoryTree !!}
    </div>
@endsection
