
function checkTab2() {
	$('.tabs-tintuc a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
		console.log(e)
	})
}

$(document).ready(function () {
	checkTab2()
	$(".tabs-tintuc .owl-carousel").owlCarousel({
		loop:true,
		nav:true,
		dots:false,
		items:1
	});
});
