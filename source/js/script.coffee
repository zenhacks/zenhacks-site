$ = jQuery

$ ->
  $('#feature-lists .features a')
    .hover -> $(@).toggleClass 'hover'

  $('#feature-lists .features').on 'click', 'a', (e) ->
    console.log @
    dest = $(@).attr('href')
    destTop = $(dest).offset()['top']
    $('html, body').animate { scrollTop : destTop }, 800, 'easeInOutExpo'
    e.preventDefault()
