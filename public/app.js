$(function () {
  $("body")
    .append("<div class='text-button'>Generate a bunch of text.</div>")
    .click(function () {
      for (var i = 0; i < 5000; i++) {
        $(".text-button").append($("<p></p>").text("This is line number " + i + "."));
      };
    });
});
