$(document).ready ->
  slider = $('#contactSliderContainer')
  openBtn = $('#contactSliderBtn')
  closeBtn = $('#closeSlider')

  openBtn.click ->
    if slider.css('margin-left') == '0px'
      slider.animate 'margin-left': '-=600'
    else
      slider.animate 'margin-left': '+=600'
      $('#slider-bg-overlay').show()

  closeBtn.click ->
    if slider.css('margin-left') == '0px'
      slider.animate 'margin-left': '-=600'
