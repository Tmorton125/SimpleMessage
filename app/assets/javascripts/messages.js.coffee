# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
		if $(".datetime_field").length > 0
			$(".datetime_field").datetimepicker(
				{minDate: 0}
			)




$(document).ready(ready)
$(document).on('page:load', ready)


