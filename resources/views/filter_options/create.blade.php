@extends('layouts.app')

@section('content-header')
    <h1>Create Filter Option</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('filter_options.index') }}">
                <i class="fa fa-dashboard"></i> Filter Options
            </a>
        </li>
        <li class="active">Create</li>
    </ol>
@endsection

@section('content')

    <div class="box box-default">

        <div class="box-header with-border">
            <h3 class="box-title">
                Create New Filter Option
            </h3>

            <div class="box-tools pull-right">
                <a href="{{ route('filter_options.index') }}" class="btn btn-sm btn-info"
                   title="Show All Filter Option">
                    <i class="fa fa-th-list" aria-hidden="true"></i>
                </a>
            </div>
        </div>

        <form method="POST" action="{{ route('filter_options.store') }}" id="create_filter_option_form"
              name="create_filter_option_form" accept-charset="UTF-8" >
            {{ csrf_field() }}

            <div class="box-body">
                @if ($errors->any())
                    <ul class="alert alert-danger">
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                @endif

                @include ('filter_options.form', ['filterOption' => null,])
            </div>

            <div class="box-footer">
                <button type="submit" class="btn btn-primary pull-right">Add filterOption</button>
            </div>
        </form>
    </div>

@endsection