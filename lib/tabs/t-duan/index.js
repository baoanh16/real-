
function checkTab2() {
	$('.tabs-duan a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
		console.log(e)
	})
}

$(document).ready(function () {
	checkTab2()
	$(".tabs-duan .owl-carousel").owlCarousel({
		loop:true,
		nav:true,
		dots:false,
		items:1,
		navText : ["<span class='fa fa-chevron-left'></span>","<span class='fa fa-chevron-right'></span>"]
	});
});
