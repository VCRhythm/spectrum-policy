# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	$("#spectrum-range").slider 
		range: true
		min: 225
		max: 3700
		values: [900, 1000]
		slide: (event, ui) ->
			$("#spectrum-low").val ui.values[0]
			$("#spectrum-high").val ui.values[1]
	$("#spectrum-low").val $("#spectrum-range").slider("values", 0)
	$("#spectrum-high").val $("#spectrum-range").slider("values", 1)
