# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	init_slider = (ui) ->
		$(ui).slider
			range: true
			min: 225
			max: 3000
			values: [900, 1000]
			slide: (event, ui) ->
				num = $(this).data 'num'
				$("#spectrum-low"+num).val ui.values[0]
				$("#spectrum-high"+num).val ui.values[1]

	init_slider_displays = (ui) ->
		num = $(ui).data 'num'
		$("#spectrum-low"+num).val $(ui).slider("values", 0)
		$("#spectrum-high"+num).val $(ui).slider("values", 1)


	$('#add-range').click ->
		num = $('#spectrum-fields').data 'amount'
		num += 1
		fieldItem = "<span class='input-append'><input type='text' name='range_log"+num+"' id='spectrum-low"+num+"'><span class='add-on'>MHz</span></span> - <span class='input-append'><input id='spectrum-high"+num+"' name='range_high"+num+"' type='text'><span class='add-on'>MHz</span></span><div class='spectrum-range' id='spectrum_range"+num+"' data-num='"+num+"'></div>"
		$('#spectrum-fields').append fieldItem	
		$('#spectrum-fields').data 'amount', num
		init_slider $("#spectrum_range"+num)
		init_slider_displays $("#spectrum_range"+num)

	init_slider $(".spectrum-range") 	
	init_slider_displays $(".spectrum-range")
