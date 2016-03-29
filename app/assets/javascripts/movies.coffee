# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.selectMovie = ->
  $('.movie.item').click ->
    data = $(@).data()
    console.log data['overview']
    $('#movie_title').val(data['title'])
    $('#movie_image_url').val(data['image'])
    $('#movie_description').val(data['overview'])
    console.log data['title']

$ ->
  selectMovie()

  $('.ui.dropdown')
    .dropdown()
  ;
