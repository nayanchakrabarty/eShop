@extends('layouts.home')

@section('css')
<link rel="stylesheet" href="{{ asset('themes/innolytic/css/datatable.css') }}">
<style>
    .project-menu ul li a {
        color: black;
    }

    .project-menu ul li.active a {
        color: #5e88fc;
        font-weight: 600;
    }
</style>
@endsection

@section('content-header')
<div class="site-blocks-cover" style="background-image: url('{{ asset('images/bg_1.jpg') }}')"></div>
@endsection


@section('content')
<section id="products" class="section-padding">
    <div class="container">
        @include('members.settingsfiles.messages')
        <div class="section-header text-center">
            <h2 class="section-title wow fadeInDown" data-wow-delay="0.3s">
                Settings
            </h2>
            <div class="shape wow fadeInDown" data-wow-delay="0.3s"></div>
        </div>

        <div class="row">

            {{-- sidenave here --}}
            @include('members.settingsfiles.sidenav')

            <div class="col-9">

            </div>
        </div>
    </div>
</section>

@endsection

@section('javascript')
<script>
    $(document).ready(function () {
            $('.btn-subscribe').click(function () {
                let setupId = $(this).attr('id');
                let packageType = $(this).data('package-type');

                $('input[name="setup_id"]').val(setupId);
                if (packageType == 'web') {
                    $('#subscriptionModalLabel').html('Website - ' + (1000 + parseInt(setupId)));
                } else if (packageType == 'android') {
                    $('#subscriptionModalLabel').html('Android App - ' + (1000 + parseInt(setupId)));
                } else if (packageType == 'ios') {
                    $('#subscriptionModalLabel').html('iOS App - ' + (1000 + parseInt(setupId)));
                }
                $('#subscriptionModal').modal('show');

                let url = '{{ route("members.subscriptionPlanHistory", ":setupId") }}';

                $.ajax({
                    type: "GET",
                    url: url.replace(':setupId', setupId),
                    dataType: "html",
                    beforeSend: function () {
                        $('.data-table')
                            .html('<div class="text-center mt-3 mb-3"><img src="{{ asset('images/ajax-loader-24.gif') }}"></div>')
                            .fadeIn(50);
                    },
                    success: function (jsonString) {
                        let jsonObject = JSON.parse(jsonString);
                        if (jsonObject.status === 'OK') {
                            $('.data-table').html(jsonObject.html);
                        }
                    },
                    error: function (xhr) {
                        $('.data-table').html('');
                    }
                });
            });
        });

</script>
@endsection