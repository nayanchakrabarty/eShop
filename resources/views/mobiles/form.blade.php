<div >
    <h4 class="box-title">
        Brand & Title
    </h4>
    <hr>
    <div class="row">
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('brand_id') ? 'has-error' : '' }} ">
            <label for="brand_id" class="control-label col-md-4">Brand</label>
            <div class="col-md-8">
                <select class="form-control select-admin-lte" id="brand_id" name="brand_id"
                        required>
                    <option value="" style="display: none;"
                            {{ old('brand_id', optional($mobile)->brand_id ?: '') == '' ? 'selected' : '' }} disabled
                            selected>Select brand
                    </option>
                    @foreach ($Brands as $key => $Brand)
                        <option value="{{ $key }}" {{ old('brand_id', optional($mobile)->brand_id) == $key ? 'selected' : '' }}>
                            {{ ucfirst($Brand) }}
                        </option>
                    @endforeach
                </select>
            </div>
            {!! $errors->first('brand_id', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('title') ? 'has-error' : '' }} ">
            <label for="title" class="control-label col-md-4">Title</label>
            <div class="col-md-8">
                <input class="form-control" name="title" type="text" id="title"
                       value="{{ old('title', optional($mobile)->title) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('title', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
    </div>
</div>

<div >
    <h4 class="box-title">
        Price & Color
    </h4>
    <hr>
    <div class="row">
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('price') ? 'has-error' : '' }} ">
            <label for="price" class="control-label col-md-4">Price</label>
            <div class="col-md-8">
                <input class="form-control" name="price" type="number" id="price"
                       value="{{ old('price', optional($mobile)->price) }}" min="-2147483648" max="2147483647"
                       required>
            </div>
            {!! $errors->first('price', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('colors') ? 'has-error' : '' }} ">
            <label for="colors" class="control-label col-md-4">Colours</label>
            <div class="col-md-8">
                <input class="form-control" type="text" name="colors" id="colors" value="{{ old('colors', optional($mobile)->colors) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('colors', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
    </div>
</div>

<div >
    <h4 class="box-title">
        Launch
    </h4>
    <hr>
    <div class="row">
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('announced') ? 'has-error' : '' }}  ">
            <label for="announced" class="control-label col-md-4">Announced</label>
            <div class="col-md-8">
                <input class="form-control" name="announced" type="text" id="announced" value="{{ old('announced', optional($mobile)->announced) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('announced', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('status') ? 'has-error' : '' }}  ">
            <label for="status" class="control-label col-md-4">Status</label>
            <div class="col-md-8">
                <input class="form-control" name="status" type="text" id="status" value="{{ old('status', optional($mobile)->status) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('status', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
    </div>
</div>

<div >
    <h4 class="box-title">
        Display
    </h4>
    <hr>
    <div class="row">
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('type') ? 'has-error' : '' }}  ">
            <label for="type" class="control-label col-md-4">Type</label>
            <div class="col-md-8">
                <input class="form-control" name="type" type="text" id="type" value="{{ old('type', optional($mobile)->type) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('type', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('size') ? 'has-error' : '' }}  ">
            <label for="size" class="control-label col-md-4">Size</label>
            <div class="col-md-8">
                <input class="form-control" name="size" type="text" id="size" value="{{ old('size', optional($mobile)->size) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('size', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('resolution') ? 'has-error' : '' }}  ">
            <label for="resolution" class="control-label col-md-4">Resolution</label>
            <div class="col-md-8">
                <input class="form-control" name="resolution" type="text" id="resolution" value="{{ old('resolution', optional($mobile)->resolution) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('resolution', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('multitouch') ? 'has-error' : '' }}  ">
            <label for="multitouch" class="control-label col-md-4">Multitouch</label>
            <div class="col-md-8">
                <input class="form-control" name="multitouch" type="text" id="multitouch"
                       value="{{ old('multitouch', optional($mobile)->multitouch) }}" minlength="1" maxlength="255">
            </div>
            {!! $errors->first('multitouch', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
    </div>
</div>

<div >
    <h4 class="box-title">
        Body
    </h4>
    <hr>
    <div class="row">
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('dimensions') ? 'has-error' : '' }}  ">
            <label for="dimensions" class="control-label col-md-4">Dimensions</label>
            <div class="col-md-8">
                <input class="form-control" name="dimensions" type="text" id="dimensions" value="{{ old('dimensions', optional($mobile)->dimensions) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('dimensions', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('weight') ? 'has-error' : '' }}  ">
            <label for="weight" class="control-label col-md-4">Weight</label>
            <div class="col-md-8">
                <input class="form-control" name="weight" type="text" id="weight" value="{{ old('weight', optional($mobile)->weight) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('weight', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('sim') ? 'has-error' : '' }}  ">
            <label for="sim" class="control-label col-md-4">Sim</label>
            <div class="col-md-8">
                <input class="form-control" name="sim" type="text" id="sim" value="{{ old('sim', optional($mobile)->sim) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('sim', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
    </div>
</div>

<div >
    <h4 class="box-title">
        Sound
    </h4>
    <hr>
    <div class="row">
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('alert_types') ? 'has-error' : '' }}  ">
            <label for="alert_types" class="control-label col-md-4">Alert Types</label>
            <div class="col-md-8">
                <input class="form-control" name="alert_types" type="text" id="alert_types"
                       value="{{ old('alert_types', optional($mobile)->alert_types) }}" minlength="1" maxlength="255">
            </div>
            {!! $errors->first('alert_types', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('loudspeaker') ? 'has-error' : '' }}  ">
            <label for="loudspeaker" class="control-label col-md-4">Loudspeaker</label>
            <div class="col-md-8">
                <select class="form-control" name="loudspeaker" id="loudspeaker" required>
                    <option value="" selected>-------Select-------</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>
            {!! $errors->first('loudspeaker', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('jack_3_5mm') ? 'has-error' : '' }}  ">
            <label for="jack_3_5mm" class="control-label col-md-4">Jack 3 5Mm</label>
            <div class="col-md-8">
                <select class="form-control" name="jack_3_5mm" id="jack_3_5mm" required>
                    <option value="" selected>-------Select-------</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>
            {!! $errors->first('jack_3_5mm', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
    </div>
</div>

<div >
    <h4 class="box-title">
        Memory
    </h4>
    <hr>
    <div class="row">
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('ram') ? 'has-error' : '' }}  ">
            <label for="ram" class="control-label col-md-4">Ram</label>
            <div class="col-md-8">
                <input class="form-control" name="ram" type="text" id="ram" value="{{ old('ram', optional($mobile)->ram) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('ram', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('storage') ? 'has-error' : '' }}  ">
            <label for="storage" class="control-label col-md-4">Storage</label>
            <div class="col-md-8">
                <input class="form-control" name="storage" type="text" id="storage" value="{{ old('storage', optional($mobile)->storage) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('storage', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('card_slot') ? 'has-error' : '' }}  ">
            <label for="card_slot" class="control-label col-md-4">Card Slot</label>
            <div class="col-md-8">
                <input class="form-control" name="card_slot" type="text" id="card_slot"
                       value="{{ old('card_slot', optional($mobile)->card_slot) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('card_slot', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
    </div>
</div>

<div >
    <h4 class="box-title">
        Main Camera
    </h4>
    <hr>
    <div class="row">
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('main_camera') ? 'has-error' : '' }}  ">
            <label for="main_camera" class="control-label col-md-4">Main Camera</label>
            <div class="col-md-8">
                <input class="form-control" name="main_camera" type="text" id="main_camera" value="{{ old('main_camera', optional($mobile)->main_camera) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('main_camera', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('mc_filter') ? 'has-error' : '' }}  ">
            <label for="mc_filter" class="control-label col-md-4">Mc Filter</label>
            <div class="col-md-8">
                <input class="form-control" name="mc_filter" type="text" id="mc_filter"
                       value="{{ old('mc_filter', optional($mobile)->mc_filter) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('mc_filter', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('mc_features') ? 'has-error' : '' }}  ">
            <label for="mc_features" class="control-label col-md-4">Mc Features</label>
            <div class="col-md-8">
                <input class="form-control" name="mc_features" type="text" id="mc_features" value="{{ old('mc_features', optional($mobile)->mc_features) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('mc_features', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('mc_video') ? 'has-error' : '' }}  ">
            <label for="mc_video" class="control-label col-md-4">Mc Video</label>
            <div class="col-md-8">
                <input class="form-control" name="mc_video" type="text" id="mc_video" value="{{ old('mc_video', optional($mobile)->mc_video) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('mc_video', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
    </div>
</div>

<div >
    <h4 class="box-title">
        Selfie Camera
    </h4>
    <hr>
    <div class="row">
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('selfie_camera') ? 'has-error' : '' }}  ">
            <label for="selfie_camera" class="control-label col-md-4">Selfie Camera</label>
            <div class="col-md-8">
                <input class="form-control" name="selfie_camera" type="text" id="selfie_camera" value="{{ old('selfie_camera', optional($mobile)->selfie_camera) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('selfie_camera', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('sc_filter') ? 'has-error' : '' }}  ">
            <label for="sc_filter" class="control-label col-md-4">Sc Filter</label>
            <div class="col-md-8">
                <input class="form-control" name="sc_filter" type="text" id="sc_filter" value="{{ old('sc_filter', optional($mobile)->sc_filter) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('sc_filter', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('sc_features') ? 'has-error' : '' }}  ">
            <label for="sc_features" class="control-label col-md-4">Sc Features</label>
            <div class="col-md-8">
                <input class="form-control" name="sc_features" type="text" id="sc_features" value="{{ old('sc_features', optional($mobile)->sc_features) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('sc_features', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('sc_video') ? 'has-error' : '' }}  ">
            <label for="sc_video" class="control-label col-md-4">Sc Video</label>
            <div class="col-md-8">
                <input class="form-control" name="sc_video" type="text" id="sc_video" value="{{ old('sc_video', optional($mobile)->sc_video) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('sc_video', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
    </div>
</div>

<div >
    <h4 class="box-title">
        Platform
    </h4>
    <hr>
    <div class="row">
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('os') ? 'has-error' : '' }}  ">
            <label for="os" class="control-label col-md-4">Os</label>
            <div class="col-md-8">
                <input class="form-control" name="os" type="text" id="os"
                       value="{{ old('os', optional($mobile)->os) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('os', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('chipset') ? 'has-error' : '' }}  ">
            <label for="chipset" class="control-label col-md-4">Chipset</label>
            <div class="col-md-8">
                <input class="form-control" name="chipset" type="text" id="chipset"
                       value="{{ old('chipset', optional($mobile)->chipset) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('chipset', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('cpu') ? 'has-error' : '' }}  ">
            <label for="cpu" class="control-label col-md-4">Cpu</label>
            <div class="col-md-8">
                <input class="form-control" name="cpu" type="text" id="cpu"
                       value="{{ old('cpu', optional($mobile)->cpu) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('cpu', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
    </div>
</div>

<div >
    <h4 class="box-title">
        Misc
    </h4>
    <hr>
    <div class="row">
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('battery_filter') ? 'has-error' : '' }}  ">
            <label for="battery_filter" class="control-label col-md-4">Battery Filter</label>
            <div class="col-md-8">
                <input class="form-control" name="battery_filter" type="number" id="battery_filter"
                       value="{{ old('battery_filter', optional($mobile)->battery_filter) }}" min="-2147483648"
                       max="2147483647"
                       required>
            </div>
            {!! $errors->first('battery_filter', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('battery') ? 'has-error' : '' }}  ">
            <label for="battery" class="control-label col-md-4">Battery</label>
            <div class="col-md-8">
                <input class="form-control" name="battery" type="text" id="battery"
                       value="{{ old('battery', optional($mobile)->battery) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('battery', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('sensors') ? 'has-error' : '' }}  ">
            <label for="sensors" class="control-label col-md-4">Sensors</label>
            <div class="col-md-8">
                <select class="form-control select-admin-lte" name="sensors" id="sensors" required>
                    <option value="" selected>-------Select-------</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>
            {!! $errors->first('sensors', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('messaging') ? 'has-error' : '' }}  ">
            <label for="messaging" class="control-label col-md-4">Messaging</label>
            <div class="col-md-8">
                <input class="form-control" name="messaging" type="text" id="messaging"
                       value="{{ old('messaging', optional($mobile)->messaging) }}" minlength="1" maxlength="255" >
            </div>
            {!! $errors->first('messaging', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('origin_id') ? 'has-error' : '' }} ">
            <label for="origin_id" class="control-label col-md-4">Origin</label>
            <div class="col-md-8">
                <input class="form-control" name="origin_id" type="number" id="origin_id"
                       value="{{ old('origin_id', optional($mobile)->origin_id) }}" min="0" max="4294967295"
                       required>
            </div>
            {!! $errors->first('origin_id', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('images') ? 'has-error' : '' }} ">
            <label for="images" class="control-label col-md-4">Images</label>
            <div class="col-md-8">
                <input class="form-control" name="images" type="number" id="images"
                       value="{{ old('images', optional($mobile)->images) }}" min="-2147483648" max="2147483647"
                       required>
            </div>
            {!! $errors->first('images', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('revision') ? 'has-error' : '' }} ">
            <label for="revision" class="control-label col-md-4">Revision</label>
            <div class="col-md-8">
                <input class="form-control" name="revision" type="number" id="revision"
                       value="{{ old('revision', optional($mobile)->revision) }}" min="-2147483648" max="2147483647"
                       required>

            </div>
            {!! $errors->first('revision', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('sorting') ? 'has-error' : '' }} ">
            <label for="sorting" class="control-label col-md-4">Sorting</label>
            <div class="col-md-8">
                <input class="form-control" name="sorting" type="number" id="sorting"
                       value="{{ old('sorting', optional($mobile)->sorting) }}" min="-2147483648" max="2147483647"
                       required>
            </div>
            {!! $errors->first('sorting', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('ext') ? 'has-error' : '' }} ">
            <label for="ext" class="control-label col-md-4">Ext</label>
            <div class="col-md-8">
                <input class="form-control" name="ext" type="text" id="ext" value="{{ old('ext', optional($mobile)->ext) }}"
                       minlength="1" maxlength="20" required>
            </div>
            {!! $errors->first('ext', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
    </div>
</div>

<div >
    <h4 class="box-title">
        Communication
    </h4>
    <hr>
    <div class="row">
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('technology') ? 'has-error' : '' }}  ">
            <label for="technology" class="control-label col-md-4">Technology</label>
            <div class="col-md-8">
                <input class="form-control" name="technology" type="text" id="technology"
                       value="{{ old('technology', optional($mobile)->technology) }}" minlength="1" maxlength="255" required>
            </div>
            {!! $errors->first('technology', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('wlan') ? 'has-error' : '' }}  ">
            <label for="wlan" class="control-label col-md-4">Wlan</label>
            <div class="col-md-8">
                <select class="form-control select-admin-lte" name="wlan" id="wlan" required>
                    <option value="" selected>-------Select-------</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>
            {!! $errors->first('wlan', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('bluetooth') ? 'has-error' : '' }}  ">
            <label for="bluetooth" class="control-label col-md-4">Bluetooth</label>
            <div class="col-md-8">
                <select class="form-control select-admin-lte" name="bluetooth" id="bluetooth" required>
                    <option value="" selected>-------Select-------</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>
            {!! $errors->first('bluetooth', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('gps') ? 'has-error' : '' }}  ">
            <label for="gps" class="control-label col-md-4">Gps</label>
            <div class="col-md-8">
                <select class="form-control select-admin-lte" name="gps" id="gps" required>
                    <option value="" selected>-------Select-------</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>
            {!! $errors->first('gps', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('radio') ? 'has-error' : '' }}  ">
            <label for="radio" class="control-label col-md-4">Radio</label>
            <div class="col-md-8">
                <select class="form-control select-admin-lte" name="radio" id="radio" required>
                    <option value="" selected>-------Select-------</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>
            {!! $errors->first('radio', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
        <!-- form group start -->
        <div class="form-group col-md-6 {{ $errors->has('usb') ? 'has-error' : '' }}  ">
            <label for="usb" class="control-label col-md-4">Usb</label>
            <div class="col-md-8">
                <select class="form-control select-admin-lte" name="usb" id="usb" required>
                    <option value="" selected>-------Select-------</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>
            {!! $errors->first('usb', '<span class="help-block">:message</span>') !!}
        </div>
        <!-- form group end -->
    </div>
</div>







{{--<div class="row">--}}
{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('brand_id') ? 'has-error' : '' }}">--}}
{{--            <label for="brand_id">Brand</label>--}}
{{--            <select class="form-control" id="brand_id" name="brand_id"--}}
{{--                    required>--}}
{{--                <option value="" style="display: none;"--}}
{{--                        {{ old('brand_id', optional($mobile)->brand_id ?: '') == '' ? 'selected' : '' }} disabled--}}
{{--                        selected>Select brand--}}
{{--                </option>--}}
{{--                @foreach ($Brands as $key => $Brand)--}}
{{--                    <option value="{{ $key }}" {{ old('brand_id', optional($mobile)->brand_id) == $key ? 'selected' : '' }}>--}}
{{--                        {{ ucfirst($Brand) }}--}}
{{--                    </option>--}}
{{--                @endforeach--}}
{{--            </select>--}}

{{--            {!! $errors->first('brand_id', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <!-- /.form-group -->--}}
{{--        <div class="form-group {{ $errors->has('title') ? 'has-error' : '' }}">--}}
{{--            <label for="title">Title</label>--}}
{{--            <input class="form-control" name="title" type="text" id="title"--}}
{{--                   value="{{ old('title', optional($mobile)->title) }}" minlength="1" maxlength="255" required>--}}
{{--            {!! $errors->first('title', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--        <!-- /.form-group -->--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('price') ? 'has-error' : '' }}">--}}
{{--            <label for="price">Price</label>--}}
{{--            <input class="form-control" name="price" type="number" id="price"--}}
{{--                   value="{{ old('price', optional($mobile)->price) }}" min="-2147483648" max="2147483647"--}}
{{--                   required>--}}
{{--            {!! $errors->first('price', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('colors') ? 'has-error' : '' }}">--}}
{{--            <label for="colors">Colors</label>--}}
{{--            <input class="form-control" name="colors" type="text" id="colors"--}}
{{--                   value="{{ old('colors', optional($mobile)->colors) }}" minlength="1" maxlength="255" required>--}}
{{--            {!! $errors->first('colors', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}

{{--<div class="row">--}}
{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('technology') ? 'has-error' : '' }}">--}}
{{--            <label for="technology">Technology</label>--}}
{{--            <input class="form-control" name="technology" type="text" id="technology"--}}
{{--                   value="{{ old('technology', optional($mobile)->technology) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('technology', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('announced') ? 'has-error' : '' }}">--}}
{{--            <label for="announced">Announced</label>--}}
{{--            <input class="form-control" name="announced" type="text" id="announced"--}}
{{--                   value="{{ old('announced', optional($mobile)->announced) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('announced', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('status') ? 'has-error' : '' }}">--}}
{{--            <label for="status">Status</label>--}}
{{--            <input class="form-control" name="status" type="text" id="status"--}}
{{--                   value="{{ old('status', optional($mobile)->status) }}" minlength="1" maxlength="255" required>--}}
{{--            {!! $errors->first('status', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('dimensions') ? 'has-error' : '' }}">--}}
{{--            <label for="dimensions">Dimensions</label>--}}
{{--            <input class="form-control" name="dimensions" type="text" id="dimensions"--}}
{{--                   value="{{ old('dimensions', optional($mobile)->dimensions) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('dimensions', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}

{{--<div class="row">--}}
{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('weight') ? 'has-error' : '' }}">--}}
{{--            <label for="weight">Weight</label>--}}
{{--            <input class="form-control" name="weight" type="text" id="weight"--}}
{{--                   value="{{ old('weight', optional($mobile)->weight) }}" minlength="1" maxlength="255" required>--}}
{{--            {!! $errors->first('weight', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('sim') ? 'has-error' : '' }}">--}}
{{--            <label for="sim">Sim</label>--}}
{{--            <input class="form-control" name="sim" type="text" id="sim" value="{{ old('sim', optional($mobile)->sim) }}"--}}
{{--                   minlength="1" maxlength="255" required>--}}
{{--            {!! $errors->first('sim', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}
{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('type') ? 'has-error' : '' }}">--}}
{{--            <label for="type">Type</label>--}}
{{--            <input class="form-control" name="type" type="text" id="type"--}}
{{--                   value="{{ old('type', optional($mobile)->type) }}"--}}
{{--                   minlength="1" maxlength="255" required>--}}
{{--            {!! $errors->first('type', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('size') ? 'has-error' : '' }}">--}}
{{--            <label for="size">Size</label>--}}
{{--            <input class="form-control" name="size" type="text" id="size"--}}
{{--                   value="{{ old('size', optional($mobile)->size) }}"--}}
{{--                   minlength="1" maxlength="255" required>--}}
{{--            {!! $errors->first('size', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}

{{--<div class="row">--}}
{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('resolution') ? 'has-error' : '' }}">--}}
{{--            <label for="resolution">Resolution</label>--}}
{{--            <input class="form-control" name="resolution" type="text" id="resolution"--}}
{{--                   value="{{ old('resolution', optional($mobile)->resolution) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('resolution', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('multitouch') ? 'has-error' : '' }}">--}}
{{--            <label for="multitouch">Multitouch</label>--}}
{{--            <input class="form-control" name="multitouch" type="text" id="multitouch"--}}
{{--                   value="{{ old('multitouch', optional($mobile)->multitouch) }}" minlength="1" maxlength="100">--}}
{{--            {!! $errors->first('multitouch', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('os') ? 'has-error' : '' }}">--}}
{{--            <label for="os">Os</label>--}}
{{--            <input class="form-control" name="os" type="text" id="os" value="{{ old('os', optional($mobile)->os) }}"--}}
{{--                   minlength="1" maxlength="255" required>--}}
{{--            {!! $errors->first('os', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('chipset') ? 'has-error' : '' }}">--}}
{{--            <label for="chipset">Chipset</label>--}}
{{--            <input class="form-control" name="chipset" type="text" id="chipset"--}}
{{--                   value="{{ old('chipset', optional($mobile)->chipset) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('chipset', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}

{{--<div class="row">--}}
{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('cpu') ? 'has-error' : '' }}">--}}
{{--            <label for="cpu">Cpu</label>--}}
{{--            <input class="form-control" name="cpu" type="text" id="cpu" value="{{ old('cpu', optional($mobile)->cpu) }}"--}}
{{--                   minlength="1" maxlength="255" required>--}}
{{--            {!! $errors->first('cpu', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('card_slot') ? 'has-error' : '' }}">--}}
{{--            <label for="card_slot">Card Slot</label>--}}
{{--            <input class="form-control" name="card_slot" type="text" id="card_slot"--}}
{{--                   value="{{ old('card_slot', optional($mobile)->card_slot) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('card_slot', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('ram') ? 'has-error' : '' }}">--}}
{{--            <label for="ram">Ram</label>--}}
{{--            <input class="form-control" name="ram" type="text" id="ram" value="{{ old('ram', optional($mobile)->ram) }}"--}}
{{--                   minlength="1" maxlength="25" required>--}}
{{--            {!! $errors->first('ram', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('origin_id') ? 'has-error' : '' }}">--}}
{{--            <label for="origin_id">Origin</label>--}}
{{--            <input class="form-control" name="origin_id" type="number" id="origin_id"--}}
{{--                   value="{{ old('origin_id', optional($mobile)->origin_id) }}" min="0" max="4294967295"--}}
{{--                   required>--}}
{{--            {!! $errors->first('origin_id', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}

{{--<div class="row">--}}
{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('storage') ? 'has-error' : '' }}">--}}
{{--            <label for="storage">Storage</label>--}}
{{--            <input class="form-control" name="storage" type="text" id="storage"--}}
{{--                   value="{{ old('storage', optional($mobile)->storage) }}" min="1" max="100" required>--}}
{{--            {!! $errors->first('storage', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('main_camera') ? 'has-error' : '' }}">--}}
{{--            <label for="main_camera">Main Camera</label>--}}
{{--            <input class="form-control" name="main_camera" type="text" id="main_camera"--}}
{{--                   value="{{ old('main_camera', optional($mobile)->main_camera) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('main_camera', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('mc_filter') ? 'has-error' : '' }}">--}}
{{--            <label for="mc_filter">Mc Filter</label>--}}
{{--            <input class="form-control" name="mc_filter" type="number" id="mc_filter"--}}
{{--                   value="{{ old('mc_filter', optional($mobile)->mc_filter) }}" min="-2147483648" max="2147483647"--}}
{{--                   required>--}}
{{--            {!! $errors->first('mc_filter', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('mc_features') ? 'has-error' : '' }}">--}}
{{--            <label for="mc_features">Mc Features</label>--}}
{{--            <input class="form-control" name="mc_features" type="text" id="mc_features"--}}
{{--                   value="{{ old('mc_features', optional($mobile)->mc_features) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('mc_features', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}

{{--<div class="row">--}}
{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('mc_video') ? 'has-error' : '' }}">--}}
{{--            <label for="mc_video">Mc Video</label>--}}
{{--            <input class="form-control" name="mc_video" type="text" id="mc_video"--}}
{{--                   value="{{ old('mc_video', optional($mobile)->mc_video) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('mc_video', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('selfie_camera') ? 'has-error' : '' }}">--}}
{{--            <label for="selfie_camera">Selfie Camera</label>--}}
{{--            <input class="form-control" name="selfie_camera" type="text" id="selfie_camera"--}}
{{--                   value="{{ old('selfie_camera', optional($mobile)->selfie_camera) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('selfie_camera', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('sc_filter') ? 'has-error' : '' }}">--}}
{{--            <label for="sc_filter">Sc Filter</label>--}}
{{--            <input class="form-control" name="sc_filter" type="number" id="sc_filter"--}}
{{--                   value="{{ old('sc_filter', optional($mobile)->sc_filter) }}" min="-2147483648" max="2147483647"--}}
{{--                   required>--}}
{{--            {!! $errors->first('sc_filter', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('sc_features') ? 'has-error' : '' }}">--}}
{{--            <label for="sc_features">Sc Features</label>--}}
{{--            <input class="form-control" name="sc_features" type="text" id="sc_features"--}}
{{--                   value="{{ old('sc_features', optional($mobile)->sc_features) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('sc_features', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}

{{--<div class="row">--}}
{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('sc_video') ? 'has-error' : '' }}">--}}
{{--            <label for="sc_video">Sc Video</label>--}}
{{--            <input class="form-control" name="sc_video" type="text" id="sc_video"--}}
{{--                   value="{{ old('sc_video', optional($mobile)->sc_video) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('sc_video', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('alert_types') ? 'has-error' : '' }}">--}}
{{--            <label for="alert_types">Alert Types</label>--}}
{{--            <input class="form-control" name="alert_types" type="text" id="alert_types"--}}
{{--                   value="{{ old('alert_types', optional($mobile)->alert_types) }}" minlength="1" maxlength="255">--}}
{{--            {!! $errors->first('alert_types', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('loudspeaker') ? 'has-error' : '' }}">--}}
{{--            <label for="loudspeaker">Loudspeaker</label>--}}
{{--            <input class="form-control" name="loudspeaker" type="text" id="loudspeaker"--}}
{{--                   value="{{ old('loudspeaker', optional($mobile)->loudspeaker) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('loudspeaker', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('jack_3_5mm') ? 'has-error' : '' }}">--}}
{{--            <label for="jack_3_5mm">Jack 3 5Mm</label>--}}
{{--            <input class="form-control" name="jack_3_5mm" type="text" id="jack_3_5mm"--}}
{{--                   value="{{ old('jack_3_5mm', optional($mobile)->jack_3_5mm) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('jack_3_5mm', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}

{{--<div class="row">--}}
{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('wlan') ? 'has-error' : '' }}">--}}
{{--            <label for="wlan">Wlan</label>--}}
{{--            <input class="form-control" name="wlan" type="text" id="wlan"--}}
{{--                   value="{{ old('wlan', optional($mobile)->wlan) }}"--}}
{{--                   minlength="1" maxlength="255" required>--}}
{{--            {!! $errors->first('wlan', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('bluetooth') ? 'has-error' : '' }}">--}}
{{--            <label for="bluetooth">Bluetooth</label>--}}
{{--            <input class="form-control" name="bluetooth" type="text" id="bluetooth"--}}
{{--                   value="{{ old('bluetooth', optional($mobile)->bluetooth) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('bluetooth', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('gps') ? 'has-error' : '' }}">--}}
{{--            <label for="gps">Gps</label>--}}
{{--            <input class="form-control" name="gps" type="text" id="gps" value="{{ old('gps', optional($mobile)->gps) }}"--}}
{{--                   minlength="1" maxlength="255" required>--}}
{{--            {!! $errors->first('gps', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('radio') ? 'has-error' : '' }}">--}}
{{--            <label for="radio">Radio</label>--}}
{{--            <input class="form-control" name="radio" type="text" id="radio"--}}
{{--                   value="{{ old('radio', optional($mobile)->radio) }}" minlength="1" maxlength="255" required--}}
{{--            >--}}
{{--            {!! $errors->first('radio', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}

{{--<div class="row">--}}
{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('usb') ? 'has-error' : '' }}">--}}
{{--            <label for="usb">Usb</label>--}}
{{--            <input class="form-control" name="usb" type="text" id="usb" value="{{ old('usb', optional($mobile)->usb) }}"--}}
{{--                   minlength="1" maxlength="255" required>--}}
{{--            {!! $errors->first('usb', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('sensors') ? 'has-error' : '' }}">--}}
{{--            <label for="sensors">Sensors</label>--}}
{{--            <input class="form-control" name="sensors" type="text" id="sensors"--}}
{{--                   value="{{ old('sensors', optional($mobile)->sensors) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('sensors', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('battery') ? 'has-error' : '' }}">--}}
{{--            <label for="battery">Battery</label>--}}
{{--            <input class="form-control" name="battery" type="text" id="battery"--}}
{{--                   value="{{ old('battery', optional($mobile)->battery) }}" minlength="1" maxlength="255"--}}
{{--                   required>--}}
{{--            {!! $errors->first('battery', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('battery_filter') ? 'has-error' : '' }}">--}}
{{--            <label for="battery_filter">Battery Filter</label>--}}
{{--            <input class="form-control" name="battery_filter" type="number" id="battery_filter"--}}
{{--                   value="{{ old('battery_filter', optional($mobile)->battery_filter) }}" min="-2147483648"--}}
{{--                   max="2147483647"--}}
{{--                   required>--}}
{{--            {!! $errors->first('battery_filter', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}

{{--<div class="row">--}}
{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('ext') ? 'has-error' : '' }}">--}}
{{--            <label for="ext">Ext</label>--}}
{{--            <input class="form-control" name="ext" type="text" id="ext" value="{{ old('ext', optional($mobile)->ext) }}"--}}
{{--                   minlength="1" maxlength="20" required>--}}
{{--            {!! $errors->first('ext', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('images') ? 'has-error' : '' }}">--}}
{{--            <label for="images">Images</label>--}}
{{--            <input class="form-control" name="images" type="number" id="images"--}}
{{--                   value="{{ old('images', optional($mobile)->images) }}" min="-2147483648" max="2147483647"--}}
{{--                   required>--}}
{{--            {!! $errors->first('images', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('revision') ? 'has-error' : '' }}">--}}
{{--            <label for="revision">Revision</label>--}}
{{--            <input class="form-control" name="revision" type="number" id="revision"--}}
{{--                   value="{{ old('revision', optional($mobile)->revision) }}" min="-2147483648" max="2147483647"--}}
{{--                   required>--}}
{{--            {!! $errors->first('revision', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="col-md-3">--}}
{{--        <div class="form-group {{ $errors->has('sorting') ? 'has-error' : '' }}">--}}
{{--            <label for="sorting">Sorting</label>--}}
{{--            <input class="form-control" name="sorting" type="number" id="sorting"--}}
{{--                   value="{{ old('sorting', optional($mobile)->sorting) }}" min="-2147483648" max="2147483647"--}}
{{--                   required>--}}
{{--            {!! $errors->first('sorting', '<span class="help-block">:message</span>') !!}--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}
