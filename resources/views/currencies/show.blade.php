@extends('layouts.app')

@section('content-header')
    <h1>Currency Details</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('currencies.index') }}">
                <i class="fa fa-dashboard"></i> Currencies
            </a>
        </li>
        <li class="active">Details</li>
    </ol>
@endsection

@section('content')

    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                {{ isset($currency->title) ? ucfirst($currency->title) : 'Currency' }} Full Information
            </h3>

            <div class="box-tools pull-right">

                <form method="POST"
                    action="{!! route('currencies.destroy', $currency->id) !!}"
                    accept-charset="UTF-8">
                    <input name="_method" value="DELETE" type="hidden">
                    {{ csrf_field() }}
                    <a href="{{ route('currencies.currency.index') }}" class="btn btn-sm btn-info" title="Show All Currency">
                        <i class="fa fa-th-list" aria-hidden="true"></i>
                    </a>

                    <a href="{{ route('currencies.create') }}" class="btn btn-sm btn-success" title="Create New Currency">
                        <i class="fa fa-plus" aria-hidden="true"></i>
                    </a>

                    <a href="{{ route('currencies.edit', $currency->id ) }}"
                        class="btn btn-sm btn-primary" title="Edit Currency">
                        <i aria-hidden="true" class="fa fa-pencil"></i>
                    </a>

                    <button type="submit" class="btn btn-sm btn-danger"
                            title="Delete Currency"
                            onclick="return confirm('Delete Currency?')">
                        <i aria-hidden="true" class="fa fa-trash"></i>
                    </button>

                </form>

            </div>

        </div>

        <div class="box-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                <tbody>
                    <tr>
                        <th width="25%">Title</th>
                        <td width="75%">{{ $currency->title }}</td>
                    </tr>
                    <tr>
                        <th width="25%">Code</th>
                        <td width="75%">{{ $currency->code }}</td>
                    </tr>
                    <tr>
                        <th width="25%">Rate</th>
                        <td width="75%">{{ $currency->rate }}</td>
                    </tr>
                    <tr>
                        <th width="25%">Default Currency</th>
                        <td width="75%">{{ $currency->default_currency }}</td>
                    </tr>
                    <tr>
                        <th width="25%">Sorting</th>
                        <td width="75%">{{ $currency->sorting }}</td>
                    </tr>

                </tbody>
                </table>
            </div>
        </div>
    </div>

@endsection
