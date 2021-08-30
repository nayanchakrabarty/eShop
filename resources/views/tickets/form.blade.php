@section('css')
    <link rel="stylesheet" href="{{ asset('vendor/summernote/summernote.css') }}">
@endsection

<div class="row">
    <div class="col-md-6">
        <div class="form-group {{ $errors->has('subject') ? 'has-error' : '' }}">
            <label for="subject">Subject</label>
            <input class="form-control" name="subject" type="text" id="subject"
                   value="{{ old('subject', optional($ticket)->subject) }}" minlength="1" maxlength="255" required>
            {!! $errors->first('subject', '<p class="help-block">:message</p>') !!}
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group {{ $errors->has('department_id') ? 'has-error' : '' }}">
            <label for="department_id">Department</label>
            <select class="form-control  select-admin-lte" id="department_id" name="department_id" required>
                <option value="">-----Select-----</option>
                @foreach ($departments as $key => $department)
                    <option value="{{ $key }}"
                        {{ old('department_id', optional($ticket)->department_id) == $key ? 'selected' : '' }}>
                        {{ $department }}
                    </option>
                @endforeach
            </select>
            {!! $errors->first('department_id', '<p class="help-block">:message</p>') !!}
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-6">
        <div class="form-group {{ $errors->has('priority') ? 'has-error' : '' }}">
            <label for="priority">Priority</label>
            <select class="form-control  select-admin-lte" id="priority" name="priority" required>
                <option value="">-----Select-----</option>
                @foreach (['Low' => 'Low', 'Medium' => 'Medium', 'High' => 'High'] as $key => $text)
                    <option value="{{ $key }}"
                        {{ old('priority', optional($ticket)->priority) == $key ? 'selected' : '' }}>
                        {{ $text }}
                    </option>
                @endforeach
            </select>
            {!! $errors->first('priority', '<p class="help-block">:message</p>') !!}
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group {{ $errors->has('status') ? 'has-error' : '' }}">
            <label for="status">Status</label>
            <select class="form-control  select-admin-lte" id="status" name="status" required>
                <option value="">-----Select-----</option>
                @foreach (['Open' => 'Open', 'Closed' => 'Closed', 'Denied' => 'Denied'] as $key => $text)
                    <option value="{{ $key }}" {{ old('status', optional($ticket)->status) == $key ? 'selected' : '' }}>
                        {{ $text }}
                    </option>
                @endforeach
            </select>
            {!! $errors->first('status', '<p class="help-block">:message</p>') !!}
        </div>
    </div>
</div>

<div class="row">
    @if (App\Helpers\CommonHelper::isCapable('tickets.storeAssignTo'))
        <div class="col-md-6">
            <div class="form-group {{ $errors->has('assign_to') ? 'has-error' : '' }}">
                <label for="assign_to">Assign To</label>
                <select class="form-control  select-admin-lte" id="assign_to" name="assign_to">
                    <option value="">-----Select-----</option>
                    @foreach ($assignTos as $key => $assignTo)
                        <option
                            value="{{ $key }}" {{ old('assign_to', optional($ticket)->assign_to) == $key ? 'selected' : '' }}>
                            {{ $assignTo }}
                        </option>
                    @endforeach
                </select>
                {!! $errors->first('assign_to', '<p class="help-block">:message</p>') !!}
            </div>
        </div>
    @endif

    <div class="col-md-6">
        <div class="form-group {{ $errors->has('product_id') ? 'has-error' : '' }}">
            <label for="product_id">Product</label>
            <select class="form-control  select-admin-lte" id="product_id" name="product_id" required>
                <option value="">-----Select-----</option>
                @foreach ($products as $key => $department)
                    <option value="{{ $key }}"
                        {{ old('product_id', optional($ticket)->product_id) == $key ? 'selected' : '' }}>
                        {{ $department }}
                    </option>
                @endforeach
            </select>
            {!! $errors->first('product_id', '<p class="help-block">:message</p>') !!}
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="form-group {{ $errors->has('message') ? 'has-error' : '' }}">
            <label for="message">Message</label>
            <textarea class="form-control rich-textarea" name="message" id="message"
                      data-image-dir="tickets"
                      cols="50" rows="10"
                      required>{{ old('message', optional($ticket)->message) }}</textarea>

            {!! $errors->first('message', '<p class="help-block">:message</p>') !!}
        </div>
    </div>
</div>

@section('javascript')
    <script src="{{ asset('vendor/summernote/summernote.min.js') }}"></script>
    <script src="{{ asset('vendor/summernote/summernote.settings.js') }}"></script>
@endsection
