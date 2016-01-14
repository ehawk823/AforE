$(document).ready(function() {
    $(".submitter").attr("disabled","disabled");
    $( "#user_name, #user_title, #user_location" ).keypress(function() {
    if (($("#user_name").val() !== "") && ($("#user_location").val() !== "") && ($("#user_title").val() !== "")){
      $(".submitter").attr("disabled",false);

    }
  });
});
