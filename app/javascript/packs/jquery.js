$(window).on('scroll', function () {
    $('header').toggleClass('scroll-ing', $(this).scrollTop() > 100)
});