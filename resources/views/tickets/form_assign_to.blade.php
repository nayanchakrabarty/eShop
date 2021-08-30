<form id="formTicket" method="POST" action="{{ route('tickets.storeAssignTo') }}"
      class="form-inline hidden">
    {{ csrf_field() }}
    <label for="department_id">Assign To</label>
    <select class="form-control" id="department_id" name="department_id">
        <option value="">----- All Departments -----</option>
        @foreach ($departments as $key => $title)
            <option value="{{ $key }}">
                {{ $title }}
            </option>
        @endforeach
    </select>
    <select class="form-control" id="assign_to" name="assign_to" aria-label="agent">
        <option value="">----- All Agents -----</option>
        @foreach ($assignTos as $assignTo)
            <option value="{{ $assignTo->id }}" class="department-{{ $assignTo->department_id }}">
                {{ $assignTo->name }}
            </option>
        @endforeach
    </select>
    <button type="submit" class="btn btn-sm btn-flat btn-success" style="margin-left: 5px">
        <i aria-hidden="true" class="fa fa-user-o"></i> Assign
    </button>
</form>
