@extends('layouts.app')

@section('content-header')
    <h1>Storage Details</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('storages.index') }}">
                <i class="fa fa-dashboard"></i> Storages
            </a>
        </li>
        <li class="active">Details</li>
    </ol>
@endsection

@section('content')

    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                {{ isset($storage->title) ? ucfirst($storage->title) : 'Storage' }} Full Information
            </h3>

            <div class="box-tools pull-right">

                <form method="POST"
                    action="{!! route('storages.destroy', $storage->id) !!}"
                    accept-charset="UTF-8">
                    <input name="_method" value="DELETE" type="hidden">
                    {{ csrf_field() }}
                    <a href="{{ route('storages.index') }}" class="btn btn-sm btn-info" title="Show All Storage">
                        <i class="fa fa-th-list" aria-hidden="true"></i>
                    </a>

                    <a href="{{ route('storages.create') }}" class="btn btn-sm btn-success" title="Create New Storage">
                        <i class="fa fa-plus" aria-hidden="true"></i>
                    </a>

                    <a href="{{ route('storages.edit', $storage->id ) }}"
                        class="btn btn-sm btn-primary" title="Edit Storage">
                        <i aria-hidden="true" class="fa fa-pencil"></i>
                    </a>

                    <button type="submit" class="btn btn-sm btn-danger"
                            title="Delete Storage"
                            onclick="return confirm('Delete Storage?')">
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
                        <td>{{ $storage->title }}</td>
                    </tr>
                    <tr>
                        <th>Mb Amount</th>
                        <td>{{ $storage->mb_amount }}</td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td>{{ $storage->status }}</td>
                    </tr>
                    <tr>
                        <th>Created At</th>
                        <td>{{ $storage->created_at }}</td>
                    </tr>
                    <tr>
                        <th>Updated At</th>
                        <td>{{ $storage->updated_at }}</td>
                    </tr>

                </tbody>
                </table>
            </div>
        </div>
    </div>

@endsection
