<div class="row">
    <div class="col-md-6">
        <div class="form-group {{ $errors->has('site_id') ? 'has-error' : '' }}">
            <label for="site_id">Site</label>
            <select class="form-control  select-admin-lte" id="site_id" name="site_id" required>
                <option value="" style="display: none;" {{ old('site_id', optional($price)->site_id ?: '') == '' ? 'selected' : '' }} disabled selected>Select site</option>
                @foreach ($sites as $key => $site)
                <option value="{{ $key }}" {{ old('site_id', optional($price)->site_id) == $key ? 'selected' : '' }}>
                    {{ $site }}
                </option>
                @endforeach
            </select>
            {!! $errors->first('site_id', '<p class="help-block">:message</p>') !!}
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group {{ $errors->has('title') ? 'has-error' : '' }}">
            <label for="title">Title</label>
            <input class="form-control" name="title" type="text" id="title"
                value="{{ old('title', optional($price)->title) }}" minlength="1" maxlength="255" required>
            {!! $errors->first('title', '<p class="help-block">:message</p>') !!}
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="form-group {{ $errors->has('price') ? 'has-error' : '' }}">
            <label for="price">Price</label>
            <input class="form-control" name="price" type="number" id="price"
                value="{{ old('price', optional($price)->price) }}" min="-2147483648" max="2147483647" required>
            {!! $errors->first('price', '<p class="help-block">:message</p>') !!}
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group {{ $errors->has('currency_id') ? 'has-error' : '' }}">
            <label for="currency_id">Currency</label>
            <select class="form-control  select-admin-lte" id="currency_id" name="currency_id" required>
                <option value="" style="display: none;" {{ old('currency_id', optional($price)->currency_id ?: '') == '' ? 'selected' : '' }} disabled selected>Select currency</option>
                @foreach ($currencies as $key => $currency)
                <option value="{{ $key }}" {{ old('currency_id', optional($price)->currency_id) == $key ? 'selected' : '' }}>
                    {{ $currency }}
                </option>
                @endforeach
            </select>
            {!! $errors->first('currency_id', '<p class="help-block">:message</p>') !!}
        </div>
    </div>
</div>

