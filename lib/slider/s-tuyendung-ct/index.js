$(function() {
	$('.tuyendung-slider .slider').owlCarousel({
		loop:true,
		nav:true,
		dots:false,
		margin:0,
		navText : ["<span class='fa fa-chevron-left'></span>","<span class='fa fa-chevron-right'></span>"],
		responsive:{
			0:{
				items:1
			},
			576:{
				items:2
			},
			992:{
				items:4
			}
		}
	})


});