$(document).ready(function() {
    $('.chamsockhachhang .content:not(:first) .item .lead').hide();
    $('.chamsockhachhang .item .lead').hide();
    $('.chamsockhachhang .item .content').click(function() {
        if ($(this).next().is(':hidden') === true) {
            $('.chamsockhachhang .item .lead').slideUp('fast');
            $('.chamsockhachhang .item .content').removeClass('active');
            $(this).next().slideDown('fast');
            $(this).addClass('active');
        } else {
            $('.chamsockhachhang .item .content').removeClass('active');
            $(this).next().slideUp('fast');
        }
    });
})