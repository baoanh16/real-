function changeNewsDetail1() {
	$(".duan-ct .news-read").lightGallery({
		thumbnail: true,
		animateThumb: false,
		showThumbByDefault: false,
		selector: '.item-news-read'
	});
}

$(document).ready(function() {
	changeNewsDetail1()
});

$(window).resize(function () {
	changeIMGtoDiv1()
})
