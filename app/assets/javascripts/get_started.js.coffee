$(document).ready ->
  $('#gets-box-1').click ->
    $('#gets-box-1').addClass('active-gets')
    $('#gets-box-2, #gets-box-3, #gets-box-4, #gets-box-5').removeClass('active-gets')
    $('.gets-box-1').addClass('show')
    $('.gets-box-2, .gets-box-3, .gets-box-4, .gets-box-5')
      .addClass('hidden')
      .removeClass('show')

  $('#gets-box-2').click ->
    $('#gets-box-2').addClass('active-gets')
    $('#gets-box-1, #gets-box-3, #gets-box-4, #gets-box-5').removeClass('active-gets')
    $('.gets-box-2').addClass('show')
    $('.gets-box-1, .gets-box-3, .gets-box-4, .gets-box-5')
      .addClass('hidden')
      .removeClass('show')

  $('#gets-box-3').click ->
    $('#gets-box-3').addClass('active-gets')
    $('#gets-box-1, #gets-box-2, #gets-box-4, #gets-box-5').removeClass('active-gets')
    $('.gets-box-3').addClass('show')
    $('.gets-box-1, .gets-box-2, .gets-box-4, .gets-box-5')
      .addClass('hidden')
      .removeClass('show')

  $('#gets-box-4').click ->
    $('#gets-box-4').addClass('active-gets')
    $('#gets-box-1, #gets-box-2, #gets-box-3, #gets-box-5').removeClass('active-gets')
    $('.gets-box-4').addClass('show')
    $('.gets-box-1, .gets-box-2, .gets-box-3,  .gets-box-5')
      .addClass('hidden')
      .removeClass('show')

  $('#gets-box-5').click ->
    $('#gets-box-5').addClass('active-gets')
    $('#gets-box-1, #gets-box-2, #gets-box-3, #gets-box-4').removeClass('active-gets')
    $('.gets-box-5').addClass('show')
    $('.gets-box-1, .gets-box-2, .gets-box-3, .gets-box-4')
      .addClass('hidden')
      .removeClass('show')



