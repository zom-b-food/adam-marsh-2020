$(function () {
    var current_page_URL = location.href;
    $("a.link1").each(function () {
        if ($(this).attr("href") !== "#") {
            var target_URL = $(this).prop("href");
            if (target_URL == current_page_URL) {
                $('am-nav1 a').parents('li, ul').removeClass('link-active');
                $(this).parent('li').addClass('link-active');
                return false;
            }
        }
    });

});
