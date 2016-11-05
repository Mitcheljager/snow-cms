var ready, set_positions;

set_positions = function() {
  $('.media-item').each(function(i) {
      $(this).attr("data-pos",i+1);
  });
}

ready = function(){

  set_positions();

  sortable('.sortable', {
    items: '.media-item',
    placeholder: '<div class="media-item__placeholder"></div>',
    handle: '.media-item__handle'
  });

  $('.sortable').bind('sortupdate', function(e, ui) {
    updated_order = []
    set_positions();

    $('.media-item').each(function(i){
        updated_order.push({ id: $(this).data('id'), position: i+1});
    });

    $.ajax({
        type: 'GET',
        url: '/admin/pages/sort',
        data: { order: updated_order }
    });
  });
}

$(document).on('turbolinks:load', function() {
  ready();

  var simplemde = new SimpleMDE({
    element: $('#markdown')[0],
    spellChecker: false
  });
});
