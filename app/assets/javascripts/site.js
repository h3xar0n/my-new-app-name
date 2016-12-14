$(document).on('turbolinks:load', function(){
  console.log($(".alert"));
  $(".alert").delay(4000).slideUp(3000).fadeOut("slow");
});