$(window).load(function() {
    $('.anchor').click(function() {
        $('.active').removeClass('active');
        $(this).addClass('active');
    });
});

