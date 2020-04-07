$(function() {
  $('#staffs-datatable').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": $('#staffs-datatable').data('source')
    },
    "pagingType": "full_numbers",
    "columns": [
      {"data": "id"},
      {"data": "name"},
    ]
    // pagingType is optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about
    // available options.
  });
});
