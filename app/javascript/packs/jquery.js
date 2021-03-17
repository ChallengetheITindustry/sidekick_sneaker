$(window).on('scroll', function () {
    $('header').toggleClass('scroll-ing', $(this).scrollTop() > 57) 
});

//フッターを最下部に固定
$(function () {
    var $footer = $('#footer');
    if (window.innerHeight > $footer.offset().top + $footer.outerHeight()) {
        $footer.attr({
            'style': 'position:fixed; top:' + (window.innerHeight - $footer.outerHeight()) + 'px;'
        });
    }
})