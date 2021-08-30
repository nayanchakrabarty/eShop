@extends('layouts.app')

@section('content-header')
    <h1>Prices</h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Prices</a></li>
        <li class="active">Listing</li>
    </ol>
@endsection

@section('content')

    @if(Session::has('success_message'))
        <div class="alert alert-success">
            <span class="glyphicon glyphicon-ok"></span>
            {!! session('success_message') !!}

            <button type="button" class="close" data-dismiss="alert" aria-label="close">
                <span aria-hidden="true">&times;</span>
            </button>

        </div>
    @endif

    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">

                    @if(count($prices) == 0)
                        <div class="row">
                            <div class="col-sm-12">
                                <a href="{{ route('prices.create') }}"
                                   class="btn btn-sm btn-success pull-right"
                                   title="Create New Price">
                                    <i aria-hidden="true" class="fa fa-plus"></i> Create
                                </a>
                            </div>
                        </div>

                        <div class="panel-body text-center">
                            <h4>No Prices Available!</h4>
                        </div>
                    @else
                        <div class="table-responsive">
                            <table id="dataTable" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Price Source</th>
                                    <th>Title</th>
                                    <th>Price</th>
                                    <th>Currency</th>
                                    <th style="width:100px;" class="text-center">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($prices as $price)
                                    <tr>
                                        <td>{{ $price->id }}</td>
                                        <td>{{ optional($price->priceSource)->url }}</td>
                                        <td>{{ $price->title }}</td>
                                        <td>{{ $price->price }}</td>
                                        <td>{{ optional($price->currency)->title }}</td>

                                        <td class="text-center" style="width:100px;">

                                            <form method="POST"
                                                  action="{!! route('prices.destroy', $price->id) !!}"
                                                  accept-charset="UTF-8">
                                                <input name="_method" value="DELETE" type="hidden">
                                                {{ csrf_field() }}

                                                <a href="{{ route('prices.show', $price->id ) }}"
                                                   class="btn btn-xs btn-info" title="Show Price">
                                                    <i aria-hidden="true" class="fa fa-eye"></i>
                                                </a>

                                                <a href="{{ route('prices.edit', $price->id ) }}"
                                                   class="btn btn-xs btn-primary" title="Edit Price">
                                                    <i aria-hidden="true" class="fa fa-pencil"></i>
                                                </a>

                                                <button type="submit" class="btn btn-xs btn-danger"
                                                        title="Delete Price"
                                                        onclick="return confirm('Delete Price?')">
                                                    <i aria-hidden="true" class="fa fa-trash"></i>
                                                </button>
                                            </form>

                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>

                    @endif

                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
@endsection

<!-- page script -->
@section('javascript')
    <script>
        $(function () {
            $('#dataTable').DataTable({
                "columnDefs": [
                    {"orderable": false, "targets": -1}
                ],
                initComplete: function () {
                    $('.dataTables_filter').append(
                        '<a href="{{ route('prices.create') }}" ' +
                        'style="margin-left: 10px" ' +
                        'class="btn btn-sm btn-success" ' +
                        'title="Create New Price"> ' +
                        '<i aria-hidden="true" class="fa fa-plus"></i> Create' +
                        '</a>'
                    );
                }
            })
        });
    </script>
@endsection
