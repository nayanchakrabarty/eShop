@extends('layouts.app')

@section('content-header')
    <h1>Edit Currency</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('currencies.index') }}">
                <i class="fa fa-dashboard"></i> Currencies
            </a>
        </li>
        <li class="active">Edit</li>
    </ol>
@endsection

@section('content')

    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                {{ !empty($currency->title) ? ucfirst($currency->title) : 'Currency' }}
            </h3>

            <div class="box-tools pull-right">
                <a href="{{ route('currencies.index') }}" class="btn btn-sm btn-info"
                   title="Show All Currency">
                    <i class="fa fa-th-list" aria-hidden="true"></i>
                </a>

                <a href="{{ route('currencies.create') }}" class="btn btn-sm btn-success"
                   title="Create New Currency">
                    <i class="fa fa-plus" aria-hidden="true"></i>
                </a>
            </div>
        </div>

        <form method="POST"
              action="{{ route('currencies.update', $currency->id) }}"
              id="edit_currency_form"
              name="edit_currency_form" accept-charset="UTF-8" >
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

                @include ('currencies.form', ['currency' => $currency,])
            </div>

            <div class="box-footer">
                <button type="submit" class="btn btn-primary pull-right">Update</button>
            </div>
        </form>

    </div>

@endsection
