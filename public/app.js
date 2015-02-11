$(function () {
  $("body")
    .append("<div class='text-button'>Generate some random text.</div>")
    .click(function () {
      $.ajax({url: "/text"})
        .done(function (data) {
          data.match(/.{1,10}/g).forEach(function (chunk) {
            $(".text-button").append($("<p></p>").text(chunk));
          });
          $(".text-button").addClass("done");
        });
    });
});
