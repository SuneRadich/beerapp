// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.all
//= require_tree .

$(function(){

	/**
	 * Initialize the sliders
	 */
	$(".slider").slider({
		"max" : 120,
		"step": 1,
		"value": 0,
		"animate": false,
		create: function(event, ui){
			//Get the value of the input field
			var inputValue = $('input', $(this).closest('.control-group') ).val();
			//Set the value of the slider
			$(this).slider('option', 'value', inputValue );
		},
		slide: function(event, ui){
			//Set input to selected value
			$('input', $(this).closest('.control-group') ).val(ui.value);
		}
	}).append('<ul><li><li><li></ul>');

	/**
	 * Change event, set the value of the slider, if the input field is changed
	 */
	$(".control-group input").change(function(){
		//Set value of slider if text field is filled
		$(this).closest(".control-group").find(".slider").slider("value", $(this).val());
	});
});