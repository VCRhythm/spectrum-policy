# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	populate_table = (id) ->
		$.ajax(url: "/issues/"+id).done (html) ->
			$(html).find(".agencies").each ->
				tableItem = $('<p>' + $(this).text() + '</p>')
				$('#information').children().children('.info-description').append tableItem

	show_information = (e) ->
		name = e.data 'name'
		description = e.data 'description'
		$('#information').children().children('.info-title').html name
		$('#information').children().children('.info-description').html description
		path = e.data 'agencies'
		$('#information').children().children('.info-agencies').load path

	$('.range').click ->
		show_information $(this)
