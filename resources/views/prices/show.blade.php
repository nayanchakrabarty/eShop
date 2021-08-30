@extends('layouts.app')

@section('content-header')
    <h1>Price Details</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('prices.index') }}">
                <i class="fa fa-dashboard"></i> Prices
            </a>
        </li>
        <li class="active">Details</li>
    </ol>
@endsection

@section('content')

    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                {{ isset($price->title) ? ucfirst($price->title) : 'Price' }} Full Information
            </h3>

            <div class="box-tools pull-right">

                <form method="POST"
                    action="{!! route('prices.destroy', $price->id) !!}"
                    accept-charset="UTF-8">
                    <input name="_method" value="DELETE" type="hidden">
                    {{ csrf_field() }}
                    <a href="{{ route('prices.index') }}" class="btn btn-sm btn-info" title="Show All Price">
                        <i class="fa fa-th-list" aria-hidden="true"></i>
                    </a>

                    <a href="{{ route('prices.create') }}" class="btn btn-sm btn-success" title="Create New Price">
                        <i class="fa fa-plus" aria-hidden="true"></i>
                    </a>

                    <a href="{{ route('prices.edit', $price->id ) }}"
                        class="btn btn-sm btn-primary" title="Edit Price">
                        <i aria-hidden="true" class="fa fa-pencil"></i>
                    </a>

                    <button type="submit" class="btn btn-sm btn-danger"
                            title="Delete Price"
                            onclick="return confirm('Delete Price?')">
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
                        <th width="25%">Price Source</th>
                        <td width="75%">{{ optional($price->priceSource)->url }}</td>
                    </tr>
                    <tr>
                        <th width="25%">Title</th>
                        <td width="75%">{{ $price->title }}</td>
                    </tr>
                    <tr>
                        <th width="25%">Price</th>
                        <td width="75%">{{ $price->price }}</td>
                    </tr>
                    <tr>
                        <th width="25%">Currency</th>
                        <td width="75%">{{ optional($price->currency)->title }}</td>
                    </tr>
                    <tr>
                        <th width="25%">Created At</th>
                        <td width="75%">{{ $price->created_at }}</td>
                    </tr>
                    <tr>
                        <th width="25%">Updated At</th>
                        <td width="75%">{{ $price->updated_at }}</td>
                    </tr>

                </tbody>
                </table>
            </div>
        </div>
    </div>

@endsection
