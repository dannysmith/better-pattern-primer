$(document).ready(function(){

	$(".fw-source textarea").keyup(function() {
		value = $(this).val();
		pattern = $(this).parents(".fw-pattern").data("fpatternname");
		a = "div[data-fpatternname='" + pattern + "'] .fw-display";
		$(a).html(value);
	});
});