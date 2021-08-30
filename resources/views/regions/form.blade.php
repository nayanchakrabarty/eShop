<div class="row">
    <div class="col-md-6">
        <div class="form-group {{ $errors->has('title') ? 'has-error' : '' }}">
            <label for="title">Title</label>
            <input class="form-control" name="title" type="text" id="title"
                value="{{ old('title', optional($region)->title) }}" minlength="1" maxlength="100" required>
            {!! $errors->first('title', '<p class="help-block">:message</p>') !!}
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group {{ $errors->has('currency_id') ? 'has-error' : '' }}">
            <label for="currency_id">Currency</label>
            <select class="form-control  select-admin-lte" id="currency_id" name="currency_id" required>
                <option value="">-----Select-----</option>
                @foreach ($currencies as $key => $currency)
                <option value="{{ $key }}" {{ old('currency_id', optional($region)->currency_id) == $key ? 'selected' : '' }}>
                    {{ $currency }}
                </option>
                @endforeach
            </select>
            {!! $errors->first('currency_id', '<p class="help-block">:message</p>') !!}
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="form-group {{ $errors->has('iso_code') ? 'has-error' : '' }}">
            <label for="iso_code">Iso Code</label>
            <input class="form-control" name="iso_code" type="text" id="iso_code"
                value="{{ old('iso_code', optional($region)->iso_code) }}" minlength="1" maxlength="5" required>
            {!! $errors->first('iso_code', '<p class="help-block">:message</p>') !!}
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group {{ $errors->has('status') ? 'has-error' : '' }}">
            <label for="status">Status</label>
            <select class="form-control  select-admin-lte" id="status" name="status" required>
                <option value="">-----Select-----</option>
                @foreach (['Active' => 'Active',
'Inactive' => 'Inactive'] as $key => $text)
                <option value="{{ $key }}" {{ old('status', optional($region)->status) == $key ? 'selected' : '' }}>
                    {{ $text }}
                </option>
                @endforeach
            </select>
            {!! $errors->first('status', '<p class="help-block">:message</p>') !!}
        </div>
    </div>
</div>

