$(document).on('turbolinks:load', function() {
    $('input[type=checkbox][data-toggle^=toggle]').bootstrapToggle()
})