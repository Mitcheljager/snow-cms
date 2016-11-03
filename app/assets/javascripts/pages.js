var ready, set_positions;

set_positions = function(){
    // loop through and give each task a data-pos
    // attribute that holds its position in the DOM
    $('.media-item').each(function(i){
        $(this).attr("data-pos",i+1);
    });
}

ready = function(){

    // call set_positions function
    set_positions();

    sortable('.sortable', {
      items: '.media-item',
      placeholder: '<div class="media-item__placeholder"></div>',
      handle: '.media-item__handle'
    });

    $('.sortable').bind('sortupdate', function(e, ui) {
        // array to store new order
        updated_order = []
        // set the updated positions
        set_positions();

        // populate the updated_order array with the new task positions
        $('.media-item').each(function(i){
            updated_order.push({ id: $(this).data("id"), position: i+1 });
        });

        // send the updated order via ajax
        $.ajax({
            type: 'GET',
            url: '/admin/pages/sort',
            data: { order: updated_order }
        });
    });
}

/**
 * if using turbolinks
 */

$(document).on('turbolinks:load', function() {
  ready();
});
