@extends('layouts.app')

@section('content-header')
    <h1>Edit Region</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('regions.index') }}">
                <i class="fa fa-dashboard"></i> Regions
            </a>
        </li>
        <li class="active">Edit</li>
    </ol>
@endsection

@section('content')

    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                {{ !empty($region->title) ? ucfirst($region->title) : 'Region' }}
            </h3>

            <div class="box-tools pull-right">
                <a href="{{ route('regions.index') }}" class="btn btn-sm btn-info"
                   title="Show All Region">
                    <i class="fa fa-th-list" aria-hidden="true"></i>
                </a>

                <a href="{{ route('regions.create') }}" class="btn btn-sm btn-success"
                   title="Create New Region">
                    <i class="fa fa-plus" aria-hidden="true"></i>
                </a>
            </div>
        </div>

        <form method="POST"
              action="{{ route('regions.update', $region->id) }}"
              id="edit_region_form"
              name="edit_region_form" accept-charset="UTF-8" >
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

                @include ('regions.form', ['region' => $region,])
            </div>

            <div class="box-footer">
                <button type="submit" class="btn btn-primary pull-right">Update</button>
            </div>
        </form>

    </div>

@endsection