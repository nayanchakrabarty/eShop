<div class="form-group row">
    <label for="reference" class="col-sm-3 col-form-label">Reference</label>
    <div class="col-sm-9">
        <input name="reference" id="reference" class="form-control"
               value="{{ optional($bankTransaction)->reference }}"
               placeholder="i.e transaction id, reference id" required>
    </div>
</div>

<div class="form-group row">
    <label for="amount" class="col-sm-3 col-form-label">Amount</label>
    <div class="col-sm-9">
        <input class="form-control" name="amount" id="amount"
               value="{{ optional($bankTransaction)->amount }}"
               placeholder="Your transaction amount" min="1.0" max="1000000.0" required>
    </div>
</div>

<div class="form-group row">
    <label for="comments" class="col-sm-3 col-form-label">Comments</label>
    <div class="col-sm-9">
            <textarea name="comments" id="comments" class="form-control"
                      cols="2">{{ optional($bankTransaction)->comments }}</textarea>
    </div>
</div>

<div class="form-group row">
    <label for="attachment" class="col-sm-3 col-form-label">Attachment</label>
    <div class="input-group uploaded-file-group col-sm-9" style="padding: 0 15px;">
        <div class="input-group">
            <input class="form-control uploaded-file-name"
                   id="thumb_image_path"
                   value="{{ optional(optional($bankTransaction)->media)->original_filename }}"
                   aria-label=""
                   readonly required>
            <label class="input-group-btn">
                    <span class="btn btn-warning">
                        Browse <input type="file" name="attachment" id="attachment" class="hidden">
                    </span>
            </label>
        </div>
    </div>
</div>
