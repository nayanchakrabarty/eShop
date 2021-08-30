@extends('layouts.app')

@section('content-header')
    <h1>Create Ticket</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('tickets.index') }}">
                <i class="fa fa-dashboard"></i> Tickets
            </a>
        </li>
        <li class="active">Create</li>
    </ol>
@endsection

@section('content')

    <div class="box box-default">

        <div class="box-header with-border">
            <h3 class="box-title">
                Create New Ticket
            </h3>

            <div class="box-tools pull-right">
                <a href="{{ route('tickets.index') }}" class="btn btn-sm btn-info"
                   title="Show All Ticket">
                    <i class="fa fa-th-list" aria-hidden="true"></i>
                </a>
            </div>
        </div>

        <form method="POST" action="{{ route('tickets.store') }}" id="create_ticket_form"
              name="create_ticket_form" accept-charset="UTF-8"  enctype="multipart/form-data">
            {{ csrf_field() }}

            <div class="box-body">
                @if ($errors->any())
                    <ul class="alert alert-danger">
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                @endif

                @include ('tickets.form', ['ticket' => null,])
            </div>

            <div class="box-footer">
                <button type="submit" class="btn btn-primary pull-right">Add ticket</button>
            </div>
        </form>
    </div>

@endsection
