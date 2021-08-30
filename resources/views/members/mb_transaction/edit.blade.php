<form method="POST" id="formMbTransaction"
      action="{{ route('members.mbTransaction.update', $mbTransaction->id) }}">

    {{ csrf_field() }}

    <input name="_method" type="hidden" value="PUT">

    @include('members.mb_transaction.form')

    <div class="form-group row">
        <div class="col-sm-8 offset-4">
            <button type="submit" class="btn btn-primary btn-flat pull-right btn-mb-transaction">Update</button>
        </div>
    </div>
</form>

<script src="{{ asset('js/common.js') }}"></script>
