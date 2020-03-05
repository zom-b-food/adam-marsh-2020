1   // locale selector actions
$(document).ready(function () {
    $('#region-picker').click(function () {

        if ($("#locale-select").is(":visible")) return closeSelector('slide');
        var foot_height = $('#footerFly').innerHeight();
        // fucks up IE  console.log("hi iam" + foot_height);
        var foot_height_css = foot_height - 0;
        var select_position = '-=' + (Number(559) + 18);
        var $selector = $('#locale-select');
        $('#locale_pop').fadeOut();
        $selector.css({top: foot_height_css});
        $selector.fadeIn(function () {
            $(this).animate({top: select_position}, 1500);
        });
    });
    $('#select-tab').click(function (e) {
        e.stopPropagation();
        closeSelector('slide');
    });
    // don't hide when clicked within the box
    $('#locale-select').click(function (e) {
        e.stopPropagation();
    });

    $('.locale-link').click(function () {
        $(".locale-select-label").html($(this).html());
        var flags = $(this).attr("class").match(/(margin\w+)\s/g);
        var flagClass = "locale-select-label" + (flags.length ? " " + flags[0] : "");
        $(".locale-select-label").attr("class", flagClass);
        closeSelector('disappear');
    });
    function closeSelector(hide_type) {
        var foot_height = $('#footerFly').innerHeight();
        var select_position = '+=' + (Number(450) + 20);
        if (hide_type == 'slide') {
            $('#locale-select').animate({top: select_position}, 1500, function () {
                $(this).fadeOut();
            });
        }
        else if (hide_type == 'disappear') {
            $('#locale-select').fadeOut('fast');
        }
    }

});