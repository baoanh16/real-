$(document).ready(function () {
	$('.home-tintuc .owl-carousel').owlCarousel({
		loop:true,
		margin:30,
		nav:true,
		dots:false,
		navText : ["<span class='fa fa-chevron-left'></span>","<span class='fa fa-chevron-right'></span>"],
		responsive:{
			0:{
				items:1
			},
			768:{
				items:2
			},
			992:{
				items:3
			}
		}
	})
});