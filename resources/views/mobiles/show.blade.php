@extends('layouts.app')

@section('css')
    <link href="{{ asset('vertical-product-gallery/stylesheet.css') }}" rel="stylesheet">
    <link href="{{ asset('vertical-product-gallery/fancybox/jquery.fancybox.css') }}" rel="stylesheet">
    <link href="{{ asset('thumbnail-scroller-2.0.3/jquery.mThumbnailScroller.css') }}" rel="stylesheet">
@endsection

@section('content-header')
    <h1>View Details</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('mobiles.index') }}">
                <i class="fa fa-dashboard"></i> Mobiles
            </a>
        </li>
        <li class="active">Show</li>
    </ol>
@endsection

@section('content')

    <!-- SELECT2 EXAMPLE -->
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">
                {{ ucfirst(optional($mobile->Brand)->title) }}
                {{ isset($mobile->title) ? $mobile->title : 'Mobile' }}
                @if ($mobile->is_duplicate)
                    <span class="badge bg-red">Duplicate</span>
                @endif
            </h3>

            <div class="box-tools pull-right">
                <form method="POST" action="{!! route('mobiles.destroy', $mobile->id) !!}"
                      accept-charset="UTF-8">
                    <input name="_method" value="DELETE" type="hidden">
                    {{ csrf_field() }}

                    <a href="{{ route('mobiles.index') }}" class="btn btn-sm btn-info"
                       title="Show All Mobile">
                        <i class="fa fa-th-list" aria-hidden="true"></i>
                    </a>

                    @if($mobile->revision == -1)
                        <a href="{{ route('mobiles.mobile.edit', $mobile->id ) }}"
                           class="btn btn-sm btn-success"
                           title="Publish Mobile">
                            <i class="fa fa-send" aria-hidden="true"></i>
                        </a>
                    @else
                        <a href="{{ route('mobiles.mobile.edit', $mobile->id ) }}"
                           class="btn btn-sm btn-success"
                           title="Send Push Notification">
                            <i class="fa fa-bell-o" aria-hidden="true"></i>
                        </a>
                    @endif

                    <a href="{{ route('mobiles.gallery', $mobile->id ) }}"
                       class="btn btn-sm btn-warning"
                       title="Add Gallery">
                        <i class="fa fa-camera" aria-hidden="true"></i>
                    </a>

                    <a href="{{ route('mobiles.mobile.edit', $mobile->id ) }}"
                       class="btn btn-sm btn-primary"
                       title="Edit Mobile">
                        <i class="fa fa-pencil" aria-hidden="true"></i>
                    </a>

                    <button type="submit" class="btn btn-sm btn-danger" title="Delete Mobile"
                            onclick="return confirm('Click Ok to delete Mobile.?')">
                        <i class="fa fa-trash" aria-hidden="true"></i>
                    </button>

                </form>
            </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="row">
                <div class="col-lg-4">
                    <table class="table table-bordered">
                        <tr>
                            <td colspan="2" class="text-center">
                                <div class="gallery">
                                    <div class="previews">
                                        @for ($i = 0; $i < $mobile->images; $i++)
                                            <a href="#"
                                               data-full="{{ config('constants.IMAGE_MOVE_URL') . $mobile->id . '_' . ($i + 1) . '.jpg' }}">
                                                <img src="{{ config('constants.IMAGE_MOVE_URL') . $mobile->id . '_' . ($i + 1) . '.jpg' }}"/>
                                            </a>
                                        @endfor
                                    </div>
                                    <div class="full">
                                        <img src="{{ $mobile->default_image }}"/>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>

                    <table class="table table-condensed table-bordered">
                        <tr>
                            <th colspan="2">Misc</th>
                        </tr>
                        <tr>
                            <td width="30%">Battery</td>
                            <td>{{ $mobile->battery }}</td>
                        </tr>
                        <tr>
                            <td>Sensors</td>
                            <td>{{ $mobile->sensors }}</td>
                        </tr>
                        <tr>
                            <td>Messaging</td>
                            <td>{{ $mobile->messaging }}</td>
                        </tr>
                    </table>

                    <table class="table table-condensed table-bordered">
                        <tr>
                            <th colspan="2">Communication</th>
                        </tr>
                        <tr>
                            <td width="30%">Network</td>
                            <td>{{ $mobile->technology }}</td>
                        </tr>
                        <tr>
                            <td>WLAN</td>
                            <td>{{ $mobile->wlan }}</td>
                        </tr>
                        <tr>
                            <td>Bluetooth</td>
                            <td>{{ $mobile->bluetooth }}</td>
                        </tr>
                        <tr>
                            <td>GPS</td>
                            <td>{{ $mobile->gps }}</td>
                        </tr>
                        <tr>
                            <td>Radio</td>
                            <td>{{ $mobile->radio }}</td>
                        </tr>
                        <tr>
                            <td>USB</td>
                            <td>{{ $mobile->usb }}</td>
                        </tr>
                    </table>

                </div>
                <div class="col-lg-4">
                    <table class="table table-condensed table-bordered">
                        <tr>
                            <th colspan="2">Price & Color</th>
                        </tr>
                        <tr>
                            <td width="30%">Price</td>
                            <td>
                                {{ $mobile->price }} &euro;
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-xs btn-link" data-toggle="modal"
                                        data-target="#quickEditModal">
                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>Colors</td>
                            <td>{{ $mobile->colors }}</td>
                        </tr>
                    </table>

                    <table class="table table-condensed table-bordered">
                        <tr>
                            <th colspan="2">Launch</th>
                        </tr>
                        <tr>
                            <td width="30%">Announced</td>
                            <td>{{ $mobile->announced }}</td>
                        </tr>
                        <tr>
                            <td>Status</td>
                            <td>{{ $mobile->status }}</td>
                        </tr>
                    </table>

                    <table class="table table-condensed table-bordered">
                        <tr>
                            <th colspan="5">Display</th>
                        </tr>
                        <tr>
                            <td width="30%">Type</td>
                            <td>{{ $mobile->type }}</td>
                        </tr>
                        <tr>
                            <td>Size</td>
                            <td>{{ $mobile->size }} inches</td>
                        </tr>
                        <tr>
                            <td>Resolution</td>
                            <td>{{ $mobile->resolution }}</td>
                        </tr>
                        <tr>
                            <td>Multitouch</td>
                            <td>{{ $mobile->multitouch }}</td>
                        </tr>
                    </table>

                    <table class="table table-condensed table-bordered">
                        <tr>
                            <th colspan="2">Body</th>
                        </tr>
                        <tr>
                            <td width="30%">Dimensions</td>
                            <td>{{ $mobile->dimensions }}</td>
                        </tr>
                        <tr>
                            <td>Weight</td>
                            <td>{{ $mobile->weight }} g</td>
                        </tr>
                        <tr>
                            <td>Sim</td>
                            <td>{{ $mobile->sim }}</td>
                        </tr>
                    </table>

                    <table class="table table-condensed table-bordered">
                        <tr>
                            <th colspan="2">Sound</th>
                        </tr>
                        <tr>
                            <td width="30%">Loud Speaker</td>
                            <td>{{ $mobile->loudspeaker }}</td>
                        </tr>
                        <tr>
                            <td>3.5mm Jack</td>
                            <td>{{ $mobile->jack_3_5mm }}</td>
                        </tr>
                    </table>
                </div>

                <div class="col-lg-4">
                    <table class="table table-condensed table-bordered">
                        <tr>
                            <th colspan="2">Memory</th>
                        </tr>
                        <tr>
                            <td width="30%">Ram</td>
                            <td>{{ $mobile->ram }}</td>
                        </tr>
                        <tr>
                            <td>Storage</td>
                            <td>{{ $mobile->storage }}</td>
                        </tr>
                        <tr>
                            <td>Card Slot</td>
                            <td>{{ $mobile->card_slot }}</td>
                        </tr>
                    </table>

                    <table class="table table-condensed table-bordered">
                        <tr>
                            <th colspan="2">Main Camera</th>
                        </tr>
                        <tr>
                            <td width="30%">Resolution</td>
                            <td>{{ $mobile->main_camera }}</td>
                        </tr>
                        <tr>
                            <td>Features</td>
                            <td>{{ $mobile->mc_features }}</td>
                        </tr>
                        <tr>
                            <td>Video</td>
                            <td>{{ $mobile->mc_video }}</td>
                        </tr>
                    </table>

                    <table class="table table-condensed table-bordered">
                        <tr>
                            <th colspan="2">Selfie Camera</th>
                        </tr>
                        <tr>
                            <td width="30%">Resolution</td>
                            <td>{{ $mobile->selfie_camera }}</td>
                        </tr>
                        <tr>
                            <td>Features</td>
                            <td>{{ $mobile->sc_features }}</td>
                        </tr>
                        <tr>
                            <td>Video</td>
                            <td>{{ $mobile->sc_video }}</td>
                        </tr>
                    </table>

                    <table class="table table-condensed table-bordered">
                        <tr>
                            <th colspan="2">Platform</th>
                        </tr>
                        <tr>
                            <td width="30%">OS</td>
                            <td>{{ $mobile->os }}</td>
                        </tr>
                        <tr>
                            <td>Chipset</td>
                            <td>{{ $mobile->chipset }}</td>
                        </tr>
                        <tr>
                            <td>CPU</td>
                            <td>{{ $mobile->cpu }}</td>
                        </tr>
                    </table>
                </div>
            </div>


            <!-- Modal -->
            <div class="modal fade" id="quickEditModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Update Price</h4>
                        </div>
                        <div class="modal-body">
                            <div class="alert hidden" id="alertBox"></div>
                            <form id="priceUpdateForm" onSubmit="return updatePrice();" class="form-horizontal">
                                <div class="form-group">
                                    <label for="price" class="col-sm-3 control-label">Price</label>
                                    <div class="col-sm-7">
                                        <div class="input-group">
                                            <span class="input-group-addon">&euro;</span>
                                            <input class="form-control" name="price" type="number" id="price"
                                                   min="-2147483648" max="2147483647"
                                                   required>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" id="btnSaveChanges" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

@endsection

<!-- page script -->
@section('javascript')
    <!-- fancybox jQuery plugins -->
    <script src="{{ asset('vertical-product-gallery/fancybox/jquery.fancybox.js') }}"></script>

    <!-- thumbnail scroller plugins -->
    <script src="{{ asset('thumbnail-scroller-2.0.3/jquery.mThumbnailScroller.js') }}"></script>

    <script>
        $(document).ready(function () {

            $('a').click(function () {
                let largeImage = $(this).attr('data-full');
                $('.selected').removeClass();
                $(this).addClass('selected');
                $('.full img').hide().attr('src', largeImage).fadeIn();
            });

            $('.full img').on('click', function () {
                let modalImage = $(this).attr('src');
                $.fancybox.open(modalImage);
            });

            $(".previews").mThumbnailScroller({
                theme: "hover-classic",
                axis: "y" //change to "y" for vertical scroller
            });

            $('#btnSaveChanges').click(function () {
                $('#priceUpdateForm').submit();
            });
        });

        function updatePrice() {
            if ($('#priceUpdateForm').valid()) {
                $.ajax({
                    type: 'PUT',
                    url: '{{ url('/mobiles/' . $mobile->id . '/update-price') }}',
                    data: {
                        'price': $('#price').val(),
                        '_token': '{{ csrf_token() }}'
                    },
                    success: function (jsonObj) {
                        $("#alertBox").html(jsonObj.message)
                            .hide()
                            .removeClass('alert-danger hidden')
                            .addClass('alert-success')
                            .fadeIn(1500);

                        setTimeout(function () {
                            location.reload(true);
                        }, 5000);
                    },
                    error: function (jsonObj) {
                        if (jsonObj.status === 422) {
                            $("#alertBox").html(jsonObj.responseJSON.message)
                                .removeClass('alert-success hidden')
                                .addClass('alert-danger');
                        }
                    }
                });
            }

            return false;
        }

    </script>
@endsection
