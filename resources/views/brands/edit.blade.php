@extends('layouts.app')

@section('content-header')
    <h1>Edit Brand</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('brands.index') }}">
                <i class="fa fa-dashboard"></i> Brands
            </a>
        </li>
        <li class="active">Edit</li>
    </ol>
@endsection

@section('content')

    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                {{ !empty($brand->title) ? ucfirst($brand->title) : 'Brand' }}
            </h3>

            <div class="box-tools pull-right">
                <a href="{{ route('brands.index') }}" class="btn btn-sm btn-info"
                   title="Show All Brand">
                    <i class="fa fa-th-list" aria-hidden="true"></i>
                </a>

                <a href="{{ route('brands.create') }}" class="btn btn-sm btn-success"
                   title="Create New Brand">
                    <i class="fa fa-plus" aria-hidden="true"></i>
                </a>
            </div>
        </div>

        <form method="POST"
              action="{{ route('brands.update', $brand->id) }}"
              id="edit_brand_form"
              name="edit_brand_form" accept-charset="UTF-8" >
            {{ csrf_field() }}
            <input name="_method" type="hidden" value="PUT">
            <div class="box-body">

                @if ($errors->any())
                    <ul class="alert alert-danger">
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                @endif

                @include ('brands.form', ['brand' => $brand,])
            </div>

            <div class="box-footer">
                <button type="submit" class="btn btn-primary pull-right">Update</button>
            </div>
        </form>

    </div>

@endsection
