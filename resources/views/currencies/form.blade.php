<div class="row">
    <div class="col-md-6">
        <div class="form-group {{ $errors->has('title') ? 'has-error' : '' }}">
            <label for="title">Title</label>
            <input class="form-control" name="title" type="text" id="title"
                value="{{ old('title', optional($currency)->title) }}" minlength="1" maxlength="20" required>
            {!! $errors->first('title', '<p class="help-block">:message</p>') !!}
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group {{ $errors->has('code') ? 'has-error' : '' }}">
            <label for="code">Code</label>
            <input class="form-control" name="code" type="text" id="code"
                value="{{ old('code', optional($currency)->code) }}" minlength="1" maxlength="5" required>
            {!! $errors->first('code', '<p class="help-block">:message</p>') !!}
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="form-group {{ $errors->has('rate') ? 'has-error' : '' }}">
            <label for="rate">Rate</label>
            <input class="form-control" name="rate" type="number" id="rate"
                value="{{ old('rate', optional($currency)->rate) }}" min="-9999999" max="9999999" required step="any">
            {!! $errors->first('rate', '<p class="help-block">:message</p>') !!}
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group {{ $errors->has('default_currency') ? 'has-error' : '' }}">
            <label for="default_currency">Default Currency</label>
            <input class="form-control" name="default_currency" type="number" id="default_currency"
                value="{{ old('default_currency', optional($currency)->default_currency) }}" min="-2147483648" max="2147483647" required>
            {!! $errors->first('default_currency', '<p class="help-block">:message</p>') !!}
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="form-group {{ $errors->has('sorting') ? 'has-error' : '' }}">
            <label for="sorting">Sorting</label>
            <input class="form-control" name="sorting" type="number" id="sorting"
                value="{{ old('sorting', optional($currency)->sorting) }}" min="-2147483648" max="2147483647" required>
            {!! $errors->first('sorting', '<p class="help-block">:message</p>') !!}
        </div>
    </div>
</div>

