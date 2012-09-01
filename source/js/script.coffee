$ = jQuery

$ ->
  $('#feature-lists .features a').hover -> $(@).toggleClass 'hover'
