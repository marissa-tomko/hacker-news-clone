$(document).ready(function() {
  voteFormListener();
});

var voteFormListener = function() {
  $("#vote-form").on("submit", ".vote-button", function(event) {
    event.preventDefault();

    var $form = $(this);
    var url = $form.attr("action");
    var method = $form.attr("method");

    $(".vote-button").hide();

    var call = $.ajax({
      url: url,
      method: method,
      data: $form.serialize()
    })

    call.done(function(response) {
      $("#total-votes").text(response);
    })

    call.fail(function(response) {
      console.log("FAIL");
    })




  })


}
