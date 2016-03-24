# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.selectMovie = ->
  $('.movie.item').click ->
    data = $(@).data()
    $('#movie_title').val(data['title'])
    $('#movie_image_url').val(data['image'])
    console.log data['title']

$ ->
  selectMovie()

  $('.ui.dropdown')
    .dropdown()
  ;
