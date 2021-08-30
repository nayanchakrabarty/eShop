@extends('layouts.app')

@section('content-header')
    <h1>Ram Details</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('rams.index') }}">
                <i class="fa fa-dashboard"></i> Rams
            </a>
        </li>
        <li class="active">Details</li>
    </ol>
@endsection

@section('content')

    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                {{ isset($ram->title) ? ucfirst($ram->title) : 'Ram' }} Full Information
            </h3>

            <div class="box-tools pull-right">

                <form method="POST"
                    action="{!! route('rams.destroy', $ram->id) !!}"
                    accept-charset="UTF-8">
                    <input name="_method" value="DELETE" type="hidden">
                    {{ csrf_field() }}
                    <a href="{{ route('rams.index') }}" class="btn btn-sm btn-info" title="Show All Ram">
                        <i class="fa fa-th-list" aria-hidden="true"></i>
                    </a>

                    <a href="{{ route('rams.create') }}" class="btn btn-sm btn-success" title="Create New Ram">
                        <i class="fa fa-plus" aria-hidden="true"></i>
                    </a>

                    <a href="{{ route('rams.edit', $ram->id ) }}"
                        class="btn btn-sm btn-primary" title="Edit Ram">
                        <i aria-hidden="true" class="fa fa-pencil"></i>
                    </a>

                    <button type="submit" class="btn btn-sm btn-danger"
                            title="Delete Ram"
                            onclick="return confirm('Delete Ram?')">
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
                        <td>{{ $ram->title }}</td>
                    </tr>
                    <tr>
                        <th>Mb Amount</th>
                        <td>{{ $ram->mb_amount }}</td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td>{{ $ram->status }}</td>
                    </tr>
                    <tr>
                        <th>Created At</th>
                        <td>{{ $ram->created_at }}</td>
                    </tr>
                    <tr>
                        <th>Updated At</th>
                        <td>{{ $ram->updated_at }}</td>
                    </tr>

                </tbody>
                </table>
            </div>
        </div>
    </div>

@endsection
