$(document).ready(function () {
    $('.icheck-flat-blue input[type="checkbox"]').iCheck({
        checkboxClass: 'icheckbox_flat-blue',
        radioClass: 'iradio_flat-blue'
    });

    $('#check_all').on('ifClicked', function (event) {
        if (!event.target.checked) {
            $('input:checkbox').iCheck('check');
        } else {
            $('input:checkbox').iCheck('uncheck');
        }
    });

    let singleItemObj = $('.singleItem');
    let updateCheckAllBox = function () {
        let totalCheckboxes = $('input.singleItem:checkbox').length;
        let totalChecked = $('input.singleItem:checkbox:checked').length;
        if (totalCheckboxes == totalChecked) {
            $('#check_all').iCheck('check');
        } else {
            $('#check_all').iCheck('uncheck');
        }

        ifAnyItemChecked();
    };

    singleItemObj.on('ifChecked', function (event) {
        updateCheckAllBox();
    });

    singleItemObj.on('ifUnchecked', function (event) {
        updateCheckAllBox();
    });

    let ifAnyItemChecked = function () {
        if ($('input.singleItem:checkbox:checked').length) {
            $('#formTicket').removeClass('hidden');
            $('.dataTables_filter label:first').hide();
            $('#btnExportXLSX').hide();
        } else {
            $('.dataTables_filter label:first').show();
            $('#btnExportXLSX').show();
            $('#formTicket').addClass('hidden');
        }
    };
});
