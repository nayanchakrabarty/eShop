@extends('layouts.app')

@section('content-header')
    <h1>Region Details</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('regions.index') }}">
                <i class="fa fa-dashboard"></i> Regions
            </a>
        </li>
        <li class="active">Details</li>
    </ol>
@endsection

@section('content')

    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                {{ isset($region->title) ? ucfirst($region->title) : 'Region' }} Full Information
            </h3>

            <div class="box-tools pull-right">

                <form method="POST"
                    action="{!! route('regions.destroy', $region->id) !!}"
                    accept-charset="UTF-8">
                    <input name="_method" value="DELETE" type="hidden">
                    {{ csrf_field() }}
                    <a href="{{ route('regions.index') }}" class="btn btn-sm btn-info" title="Show All Region">
                        <i class="fa fa-th-list" aria-hidden="true"></i>
                    </a>

                    <a href="{{ route('regions.create') }}" class="btn btn-sm btn-success" title="Create New Region">
                        <i class="fa fa-plus" aria-hidden="true"></i>
                    </a>

                    <a href="{{ route('regions.edit', $region->id ) }}"
                        class="btn btn-sm btn-primary" title="Edit Region">
                        <i aria-hidden="true" class="fa fa-pencil"></i>
                    </a>

                    <button type="submit" class="btn btn-sm btn-danger"
                            title="Delete Region"
                            onclick="return confirm('Delete Region?')">
                        <i aria-hidden="true" class="fa fa-trash"></i>
                    </button>

                </form>

            </div>

        </div>

        <div class="box-body">
            <div class="table-responsive">
                <table class="table table-bordered table-show">
                <tbody>
                    <tr>
                        <th>Title</th>
                        <td>{{ $region->title }}</td>
                    </tr>
                    <tr>
                        <th>Currency</th>
                        <td>{{ optional($region->currency)->title }}</td>
                    </tr>
                    <tr>
                        <th>Iso Code</th>
                        <td>{{ $region->iso_code }}</td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td>{{ $region->status }}</td>
                    </tr>
                    <tr>
                        <th>Created At</th>
                        <td>{{ $region->created_at }}</td>
                    </tr>
                    <tr>
                        <th>Updated At</th>
                        <td>{{ $region->updated_at }}</td>
                    </tr>

                </tbody>
                </table>
            </div>
        </div>
    </div>

@endsection
