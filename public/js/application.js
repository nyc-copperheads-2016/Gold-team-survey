$(document).ready(function() {
    $('.form-container').on('submit', 'form', function(e) {
      // console.log("before")
      e.preventDefault();
      console.log("after")
      $.ajax({
        method: 'post',
        url: e.target.action,
        data: $(e.target).serialize()

      }).done(function(response){
        // debugger
        $('.form-container').html(response);
        // $('.bigger-container').append(response);
      }).fail(function(response){
        console.log("There was an error: " + response);
      });
    });
});



    // $('#question_submit').on('click', function(e) {
    //   e.preventDefault();
    //   $.ajax({
    //     method: 'GET'
    //     url: "/questions"
    //   }).done(function(response){
    //     $('#new_question').append(response)
    //   }).fail(function(response){
    //     console.log("There was an error: " + response);
    //   });
    // });
