function CCHeader11() {
	$('.canhcam-header-11 #demoResAllInOneMenu').kResponsiveMenu({
		animationSpeed: 'fast', // slow, fast, 200
		resizeWidth: 'lg', // 'xs', 'sm', 'md', 'lg', 'xl', 480,
		menuType: 'horizontal', // horizontal, vertical
		menuPush: 'right', // right, left
		menuPushPosition: 'fixed', // absolute
		menuPushWidth: '300px', // px, %, rem
		menuBackDrop: true, // px, %, rem
	})
};


$(document).ready(function () {
	CCHeader11()
	$('.canhcam-header-11 .nav-item .nav-link').first().text('')
	$('.canhcam-header-11 .nav-item .nav-link').first().prepend("<span class='d-lg-inline-block d-none mdi mdi-home'></span>")
	$('.canhcam-header-11 .nav-item .nav-link').first().prepend("<p class='d-inline-block d-lg-none mb-0'>Trang chủ</p>")
	$('.canhcam-header-11 .searchbutton').text('')
	$('.canhcam-header-11 .searchbutton').prepend('<span class="mdi mdi-magnify"></span>')
});
// Fixed Header
$(window).scroll(function () {
});

$(window).resize(function () {
})
