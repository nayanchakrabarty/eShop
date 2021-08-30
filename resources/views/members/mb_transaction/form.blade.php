<div class="form-group row">
    <label for="sender_mobile" class="col-sm-4 col-form-label">bKash Mobile</label>
    <div class="col-sm-8">
        <input name="sender_mobile" id="sender_mobile" class="form-control"
               value="{{ optional($mbTransaction)->sender_mobile }}"
               placeholder="i.e 01734XXXXXX" required>
    </div>
</div>

<div class="form-group row">
    <label for="amount" class="col-sm-4 col-form-label">bKash Amount</label>
    <div class="col-sm-8">
        <input class="form-control" name="amount" id="amount"
               value="{{ optional($mbTransaction)->amount }}"
               placeholder="10XXXX" min="1.0" max="1000000.0" required>
    </div>
</div>

<div class="form-group row">
    <label for="transaction_id" class="col-sm-4 col-form-label">bKash Transaction Id</label>
    <div class="col-sm-8">
        <input class="form-control" name="transaction_id" id="transaction_id"
               value="{{ optional($mbTransaction)->transaction_id }}"
               placeholder="5C424XXXXXX" required>
    </div>
</div>
