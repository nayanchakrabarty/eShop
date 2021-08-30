<form method="POST" action="{{ route('members.bankTransaction.store') }}"
      enctype="multipart/form-data">
    {{ csrf_field() }}

    <input type="hidden" name="order_id" value="{{ $orderId }}">

    @include('members.bank_transaction.form')

    <div class="form-group row">
        <div class="col-sm-9 offset-3">
            <button type="submit" class="btn btn-primary btn-flat pull-right">Submit</button>
        </div>
    </div>
</form>

<script src="{{ asset('js/common.js') }}"></script>
