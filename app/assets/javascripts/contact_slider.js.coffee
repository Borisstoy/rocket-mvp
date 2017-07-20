$(document).ready ->
  slider = $('#contactSliderContainer')
  openBtn = $('.openSliderBtn')
  closeBtn = $('#closeSliderBtn')
  overlay = $('#slider-bg-overlay')

  openBtn.click ->
    if slider.css('margin-left') == '0px'
      slider.animate 'margin-left': '-=400'
    else
      slider.animate 'margin-left': '+=400'
      overlay.show()
      slider.addClass('openSlider')
      closeBtn.animate 'margin-left': '+=400'

  closeBtn.click ->
    if slider.hasClass('openSlider')
      slider.animate 'margin-left': '-=400px'
      overlay.hide()
      closeBtn.animate 'margin-left': '-=400'


