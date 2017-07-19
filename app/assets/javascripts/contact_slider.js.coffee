$(document).ready ->
  slider = $('#contactSliderContainer')
  openBtn = $('#contactSliderBtn')
  closeBtn = $('#closeSliderBtn')

  openBtn.click ->
    if slider.css('margin-left') == '0px'
      slider.animate 'margin-left': '-=400'
    else
      slider.animate 'margin-left': '+=400'
      $('#slider-bg-overlay').show()
      slider.addClass('openSlider')
      closeBtn.show()

  closeBtn.click ->
    if slider.hasClass('openSlider')
      slider.animate 'margin-left': '-=400px'
      $('#slider-bg-overlay').hide()
      closeBtn.hide()


