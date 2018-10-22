$(document).ready(function () {
	$('.nav-gioithieu .toggle').click(function (e) { 
		$('.nav-gioithieu #navbar').toggleClass("show")
		$(this).toggleClass("active")
		
	});
	var $root = $('html, body');
	var navHeight = $('.nav-gioithieu').outerHeight()
	var navHeader = $('header').outerHeight()
	$('.nav-gioithieu a').eq(1).addClass('active');
	$('.nav-gioithieu a[href^="#"]').click(function () {
		$('.nav-gioithieu a[href^="#"].active').removeClass("active")
		$(this).addClass("active")
		var href = $(this).attr('href');
		$root.stop().animate({
			scrollTop: $(href).offset().top-navHeight-navHeader
		}, 500, function () {
			location.hash = href;
		});
		console.log(href);
		
	});
});

$(window).scroll(function() {
	var scrollDistance = $(window).scrollTop();
	var navHeight = $('.nav-gioithieu').outerHeight()
	var navHeader = $('header').outerHeight()
	$('.page-section').each(function(i) {
			if (scrollDistance == 300 || scrollDistance == 0) {
				$('.nav-gioithieu a.active').removeClass('active');
				$('.nav-gioithieu a').eq(1).addClass('active');				
			}

			if ($(this).position().top <= scrollDistance-200) {
				$('.nav-gioithieu a').eq(1).removeClass('active')
				$('.nav-gioithieu a.active').removeClass('active');
				$('.nav-gioithieu a').eq(i+2).addClass('active');				
			}else{
				$('.nav-gioithieu a').eq(0).addClass('active')
			}
			console.log($(this).position().top);
	});
	
	
}).scroll();
