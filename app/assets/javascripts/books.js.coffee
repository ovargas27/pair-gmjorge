# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  #status = $('.status').text().replace(/ /g,'')
  status = $('.status')
  status_txt = $.trim($(status).text())
  if status_txt == 'available'
    $(status).css('color', 'green')
  else
    $(status).css('color', 'red')
