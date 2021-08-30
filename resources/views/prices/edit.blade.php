@extends('layouts.app')

@section('content-header')
    <h1>Edit Price</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('prices.index') }}">
                <i class="fa fa-dashboard"></i> Prices
            </a>
        </li>
        <li class="active">Edit</li>
    </ol>
@endsection

@section('content')

    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                {{ !empty($price->title) ? ucfirst($price->title) : 'Price' }}
            </h3>

            <div class="box-tools pull-right">
                <a href="{{ route('prices.index') }}" class="btn btn-sm btn-info"
                   title="Show All Price">
                    <i class="fa fa-th-list" aria-hidden="true"></i>
                </a>

                <a href="{{ route('prices.create') }}" class="btn btn-sm btn-success"
                   title="Create New Price">
                    <i class="fa fa-plus" aria-hidden="true"></i>
                </a>
            </div>
        </div>

        <form method="POST"
              action="{{ route('prices.update', $price->id) }}"
              id="edit_price_form"
              name="edit_price_form" accept-charset="UTF-8" >
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

                @include ('prices.form', ['price' => $price,])
            </div>

            <div class="box-footer">
                <button type="submit" class="btn btn-primary pull-right">Update</button>
            </div>
        </form>

    </div>

@endsection
