# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	show_information = (e) ->
		name = e.data('name')
		description = e.data('description')
		$('#information').children('.info-title').html(name)
		$('#information').children('.info-description').html(description)

	$('.range').on 'click', (event) =>
		e = $(event.target)
		show_information(e)
