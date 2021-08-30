@extends('layouts.app')

@section('content-header')
    <h1>Regions</h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Regions</a></li>
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

                    @if(count($regions) == 0)
                    <div class="row">
                        <div class="col-sm-12">
                            @if (App\Helpers\CommonHelper::isCapable('regions.create'))
                            <a href="{{ route('regions.create') }}"
                               class="btn btn-sm btn-success pull-right"
                               title="Create New Region">
                                <i aria-hidden="true" class="fa fa-plus"></i> Create
                            </a>
                            @endif
                        </div>
                    </div>

                    <div class="panel-body text-center">
                        <h4>No Regions Available!</h4>
                    </div>
                    @else
                    <div class="table-responsive">
                        <table id="dataTable" class="table table-bordered table-striped">
                            <thead>
                            <tr>
								<th>Id</th>
								<th>Title</th>
								<th>Currency</th>
								<th>Iso Code</th>
								<th>Status</th>
								<th style="min-width:100px;" class="text-center">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($regions as $region)
                            <tr>
								<td>{{ $region->id }}</td>
								<td>{{ $region->title }}</td>
								<td>{{ optional($region->currency)->title }}</td>
								<td>{{ $region->iso_code }}</td>
								<td>{{ $region->status }}</td>
								<td class="text-center" style="min-width:100px;">

                                    <form method="POST"
                                          action="{!! route('regions.destroy', $region->id) !!}"
                                          accept-charset="UTF-8">
                                        <input name="_method" value="DELETE" type="hidden">
                                        {{ csrf_field() }}

                                        @if (App\Helpers\CommonHelper::isCapable('regions.show'))
                                        <a href="{{ route('regions.show', $region->id ) }}"
                                           class="btn btn-xs btn-info" title="Show Region">
                                            <i aria-hidden="true" class="fa fa-eye"></i>
                                        </a>
                                        @endif

                                        @if (App\Helpers\CommonHelper::isCapable('regions.edit'))
                                        <a href="{{ route('regions.edit', $region->id ) }}"
                                           class="btn btn-xs btn-primary" title="Edit Region">
                                            <i aria-hidden="true" class="fa fa-pencil"></i>
                                        </a>
                                        @endif

                                        @if (App\Helpers\CommonHelper::isCapable('regions.destroy'))
                                        <button type="submit" class="btn btn-xs btn-danger"
                                                title="Delete Region"
                                                onclick="return confirm('Delete Region?')">
                                            <i aria-hidden="true" class="fa fa-trash"></i>
                                        </button>
                                        @endif
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
                        '@if (App\Helpers\CommonHelper::isCapable('regions.create'))' +
                        '<a href="{{ route('regions.create') }}" ' +
                        'style="margin-left: 10px" ' +
                        'class="btn btn-sm btn-success" ' +
                        'title="Create New User"> ' +
                        '<i aria-hidden="true" class="fa fa-plus"></i> Create' +
                        '</a>' +
                        '@endif'
                    );
                }
            })
        });
    </script>
@endsection
