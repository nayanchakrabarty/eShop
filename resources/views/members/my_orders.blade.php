@extends('layouts.home')

@section('css')
    <link rel="stylesheet" href="{{ asset('themes/innolytic/css/datatable.css') }}">
    <link rel="stylesheet" href="{{ asset('themes/innolytic/css/_all-skins.min.css') }}">
    <link rel="stylesheet" href="{{ asset('themes/innolytic/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('content-header')
    <div class="site-blocks-cover"
         style="background-image: url('{{ asset('images/bg_1.jpg') }}')"></div>
@endsection

@section('content')

    <section id="products" class="section-padding">
        <div class="container">
            @if(Session::has('success_message'))
                <div class="alert alert-success">
                    <span class="glyphicon glyphicon-ok"></span>
                    {!! session('success_message') !!}

                    <button type="button" class="close" data-dismiss="alert" aria-label="close">
                        <span aria-hidden="true">&times;</span>
                    </button>

                </div>
            @endif

            @if(Session::has('error_message'))
                <div class="alert alert-danger">
                    <span class="fa fa-exclamation-triangle"></span>
                    {!! session('error_message') !!}

                    <button type="button" class="close" data-dismiss="alert" aria-label="close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif

            @if ($errors->any())
                <ul class="alert alert-danger">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            @endif

            <div class="section-header text-center">
                <h2 class="section-title wow fadeInDown" data-wow-delay="0.3s">
                    My Orders
                </h2>
                <div class="shape wow fadeInDown" data-wow-delay="0.3s"></div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="box">
                        <div class="box-body">

                            @if(count($orders) == 0)
                                <div class="panel-body text-center">
                                    <h6>No Orders Available!</h6>
                                </div>
                            @else
                                <div class="table-responsive">
                                    <table id="dataTable" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>Order Id</th>
                                            <th>Package Name</th>
                                            <th>Subscription Plan</th>
                                            <th class="text-right">Paid Amount (BDT)</th>
                                            <th class="text-center">Payment Method</th>
                                            <th>Created On</th>
                                            <th>Status</th>
                                            <th style="min-width:60px;" class="text-center">Invoice</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($orders as $order)
                                            <tr>
                                                <td>{{ (10000 + $order->id) }}</td>
                                                <td>{{ $order->package_name }}</td>
                                                <td>
                                                    @if ($order->subscription_plan == 0)
                                                        <i>No</i>
                                                    @elseif ($order->subscription_plan == 1)
                                                        1 Month
                                                    @else
                                                        {{ $order->subscription_plan }} Months
                                                    @endif
                                                </td>
                                                <td class="text-right">{{ number_format($order->paid_amount, 2) }}</td>
                                                <td class="text-center">{{ $order->payment_method }}</td>
                                                <td>{{ $order->created_at }}</td>
                                                <td>
                                                    @if ($order->status == 'Pending' || $order->status == 'Processing')
                                                        <span class="label label-info">{{ $order->status }}</span>
                                                    @elseif ($order->status == 'On-Hold')
                                                        <span class="label label-warning">{{ $order->status }}</span>
                                                    @elseif ($order->status == 'Cancel' || $order->status == 'Failed')
                                                        <span class="label label-danger">{{ $order->status }}</span>
                                                    @else
                                                        <span class="label label-success">{{ $order->status }}</span>
                                                    @endif
                                                </td>
                                                <td class="text-center" style="min-width:80px;">

                                                    <form method="POST"
                                                          action="{!! route('members.destroyOrder', $order->id) !!}"
                                                          accept-charset="UTF-8">
                                                        <input name="_method" value="DELETE" type="hidden">
                                                        {{ csrf_field() }}

                                                        @if ($order->status == 'Pending' && $order->payment_method == 'Bank')
                                                            <button class="btn btn-xs btn-primary btn-bank" type="button"
                                                                    data-order-id="{{ $order->id }}">
                                                                <i class="fa fa-upload" aria-hidden="true"></i>
                                                            </button>
                                                        @endif

                                                        @if ($order->status == 'Pending' && $order->payment_method == 'bKash')
                                                            <button class="btn btn-xs btn-primary btn-bkash" type="button"
                                                                    data-order-id="{{ $order->id }}">
                                                                <i class="fa fa-upload" aria-hidden="true"></i>
                                                            </button>
                                                        @endif

                                                        <a href="{{ route('members.printInvoice', $order->id) }}"
                                                           class="btn btn-xs btn-warning"
                                                           title="Print Invoice">
                                                            <i class="fa fa-file-pdf-o" aria-hidden="true"></i>
                                                        </a>

                                                        @if ($order->status == 'Pending')
                                                            <button type="submit" class="btn btn-xs btn-danger"
                                                                    title="Delete Order"
                                                                    onclick="return confirm('Delete Order?')">
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
            </div>

        </div>
    </section>

    <!-- Modal -->
    <div class="modal fade" id="modalBankTransaction" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="labelBankTransaction">Bank Transaction Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" id="modalBodyBankTransaction"></div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="modalMbTransaction" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="labelMbTransaction">BKash Transaction Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" id="modalBodyMbTransaction"></div>
            </div>
        </div>
    </div>

@endsection

<!-- page script -->
@section('javascript')
    <script src="{{ asset('vendor/admin-lte/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('vendor/admin-lte/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>
    <script>
        $(function () {
            $('#dataTable').DataTable({
                order: [[0, 'desc']],
                "columnDefs": [
                    {"orderable": false, "targets": -1}
                ]
            });

            $('.btn-bkash').click(function () {
                let orderId = $(this).data('order-id');
                let url = '{{ route("members.mbTransaction.edit", ":orderId") }}';
                $('#modalMbTransaction').modal('show');

                $.ajax({
                    type: "GET",
                    url: url.replace(':orderId', orderId),
                    dataType: "html",
                    beforeSend: function () {
                        $('#modalBodyMbTransaction')
                            .html('<div class="text-center mt-3 mb-3"><img src="{{ asset('images/ajax-loader-24.gif') }}"></div>')
                            .fadeIn(50);
                    },
                    success: function (jsonString) {
                        let jsonObject = JSON.parse(jsonString);
                        if (jsonObject.status === 'OK') {
                            $('#modalBodyMbTransaction').html(jsonObject.html);
                        }
                    },
                    error: function () {
                        $('#modalBodyMbTransaction').html('');
                    }
                });
            });

            $('.btn-bank').click(function () {
                let orderId = $(this).data('order-id');
                let url = '{{ route("members.bankTransaction.createOrEdit", ":orderId") }}';
                $('#modalBankTransaction').modal('show');

                $.ajax({
                    type: "GET",
                    url: url.replace(':orderId', orderId),
                    dataType: "html",
                    beforeSend: function () {
                        $('#modalBodyBankTransaction')
                            .html('<div class="text-center mt-3 mb-3"><img src="{{ asset('images/ajax-loader-24.gif') }}"></div>')
                            .fadeIn(50);
                    },
                    success: function (jsonString) {
                        let jsonObject = JSON.parse(jsonString);
                        if (jsonObject.status === 'OK') {
                            $('#modalBodyBankTransaction').html(jsonObject.html);
                        }
                    },
                    error: function () {
                        $('#modalBodyBankTransaction').html('');
                    }
                });
            });
        });
    </script>
@endsection
