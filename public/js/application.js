$(document).ready(function() {
    $('#question_submit').on('click', function(e) {
      e.preventDefault();
      $.ajax({
        method: 'GET'
        url: "/questions"
      }).done(function(response){
        $('#new_question').append(response)
      }).fail(function(response){
        console.log("There was an error: " + response);
      });
    });
});