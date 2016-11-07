$(document).on('turbolinks:load', function() {
  if ($('#markdown').length != 0) {
    var simplemde = new SimpleMDE({
      element: $('#markdown')[0],
      spellChecker: false
    });

    $(window).on('scroll', fixMarkdownToolbar);
  }
});

fixMarkdownToolbar = function() {
  var scrollFromTop = $(window).scrollTop();
  var editorPos = $('.CodeMirror').offset().top;
  var toolbarHeight = $('.editor-toolbar').outerHeight();
  var editorWidth = $('.CodeMirror').outerWidth();

  if (scrollFromTop > editorPos) {
    $('.editor-toolbar').addClass('editor-toolbar--fixed').css('width', editorWidth);
    $('.CodeMirror').css('padding-top', toolbarHeight + 10);
  } else {
    $('.editor-toolbar').removeClass('editor-toolbar--fixed');
    $('.CodeMirror').css('padding-top', 10);
  }
}
