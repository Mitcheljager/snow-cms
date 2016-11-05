$(document).on('turbolinks:load', function() {
  var simplemde = new SimpleMDE({
    element: $('#markdown')[0],
    spellChecker: false
  });
});
