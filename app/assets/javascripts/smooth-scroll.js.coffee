$(document).ready ->
  # Add smooth scrolling to all links
  $('a').on 'click', (event) ->
    # Make sure this.hash has a value before overriding default behavior
    if @hash != ''
      # Prevent default anchor click behavior
      event.preventDefault()
      # Store hash
      hash = @hash
      # Using jQuery's animate() method to add smooth page scroll
      # The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate { scrollTop: $(hash).offset().top }, 800, ->
        # Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash
        return
    # End if
    return
