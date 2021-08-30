<form id="formMbTransaction" method="POST" onsubmit="return false">

    {{ csrf_field() }}

    @include('members.mb_transaction.form')

    <div class="form-group row">
        <div class="col-sm-8 offset-4">
            <button type="submit" class="btn btn-primary btn-flat pull-right btn-mb-transaction">Submit</button>
        </div>
    </div>
</form>


