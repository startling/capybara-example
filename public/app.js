$(function () {
  $("body")
    .append("<div class='text-button'>Generate some random text.</div>")
    .click(function () {
      $.ajax({url: "/text"})
        .done(function (data) {
          $(".text-button").addClass("done");
          $(".text-button").text(data);
        });
    });
});
