$(document).ready ->
  $(".contactSliderContainer").hide()
  $("#closeSlider").show()




  $('#closeSlider').click ->
    $(".contactSliderContainer").toggle("slide")
