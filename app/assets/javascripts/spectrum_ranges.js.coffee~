# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
#	populate_table = (id) ->
#		$.ajax(url: "/issues/"+id).done (html) ->
#			$(html).find(".agencies").each ->
#				tableItem = $('<p>' + $(this).text() + '</p>')
#				$('#information').children().children('.info-description').append tableItem
	show_information = (e) ->
		name = e.data 'name'
		description = e.data 'description'
		link_path = "<a href='/issues/" + e.data('id') + "/agency_actions/new'>Add a New Agency Action</a>" 
		$('#information').children().children('.info-title').html name
		$('#information').children().children('.info-description').html description
		$('#add-action').html(link_path)
		$('#add-action').show()
		path = e.data 'agencies'
		$.getJSON(path).done (data) ->
			$('#information').children().children('.info-agencies').html ""
			$.each data, (key, val) -> 
				actionItem = val.agency.name + ': ' + val.description
				actionItem += " <a href='" + val.link + "'>[link]</a>" if val.link
				$('#information').children().children('.info-agencies').append actionItem

	$('.range').click ->
		show_information $(this)
