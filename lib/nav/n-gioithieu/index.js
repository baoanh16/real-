$(document).ready(function () {
	$('.nav-gioithieu .toggle').click(function (e) { 
		$('.nav-gioithieu #navbar').toggleClass("show")
		$(this).toggleClass("active")
	});
	var $root = $('html, body');
	var navHeight = $('.nav-gioithieu').outerHeight()
	var navHeader = $('header').outerHeight()
	$('.nav-gioithieu a[href^="#"]').click(function () {
		$('.nav-gioithieu a[href^="#"].active').removeClass("active")
		$(this).addClass("active")
		var href = $.attr(this, 'href');
		$root.animate({
			scrollTop: $(href).offset().top-navHeight-navHeader
		}, 500, function () {
			window.location.hash = href;
		});
	});
});
