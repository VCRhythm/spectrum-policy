# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	populate_table = (id) ->
		$.ajax(url: "/issues").done (html) ->
			$(html).find(".agencies").each ->
				tableItem = $('<tr><td>' + $(this).text() + '</td></tr>')
				$('#information').children('.table').children('.table-body').html tableItem

	show_information = (e) ->
		name = e.data('name')
		description = e.data('description')
		$('#information').children().children('.info-title').html name
		$('#information').children().children('.info-description').html description
		populate_table(e.data('id'))

	$('.range').click ->
		show_information($(this))
