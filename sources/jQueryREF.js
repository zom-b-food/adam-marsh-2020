//sprite rollover		
url(sprite.png) - 91
px;
;
0;
url(sprite.png) - 51
px;
;
0;
//sprite function
$(document).ready(function () {
    $(".myrolloverclass").hover(function () {
        $(this).css({
            'background-position': "0 0"
        });
    });
});

//page refresh when refresh class is clicked
$(document).ready(function () {
    $('.refresh').live("click", function () {
        window.location.reload()
    });
});

//div refresh when refresh class is clicked
$(document).ready(function () {
    $('#registerForm').delay(10000).load('registerEntry.php #registerForm');
});

//showing the reason text area and button if appointment is with behavioral health
$(document).ready(function () {
    var mhProvider = ["Redmond Family Practice", "Everett Mental Health Services", "Tacoma Mental Health Services", "Riverfront Mental Health Services", "Factoria Mental Health Services", "Lidgerwood Mental Health Services", "Metropolitan Park Mental Health Services", "Olympia Mental Health Services", "Veradale Mental Health Services", "Riverfront ADAPT", "South Hill Mental Health Services", "Bremerton Mental Health Services"];
    // -1 returns true if appointment.location is in the array
    // 0 returns true if appointment.location is NOT in the array
    if ($.inArray("${appointment.location}", mhProvider) > -1) {
        $("#behavioralHealth").show();
        $("#nonBehavioralHealth").hide();
    }
    else {
        $("#nonBehavioralHealth").show();
        $("#behavioralHealth").hide();
    }
});

// show/hide with slider animation
$(document).ready(function () {
    $("p").click(function () {
        $("div").hide("slide", {}, 1000);
    });
});

// jquery mouseover
$(document).ready(function () {
    $('ul#menu li a').mouseover(function () {
        $(this).css('background-color', '#CCCCCC');
    }).mouseout(function () {
            $(this).css('background-color', '#FFFFFF')
        });

// using .live binds "click" to the jq object "#requestCancelAptBtn"
// only operates on a direct CSS selector string
    $("#requestCancelAptBtn").live("click", function () {
        window.setTimeout(function () {
            location.reload()
        }, 200);
    });

// using .delegate binds "click" only to "a" in the jq object "requestCancelAptBtn"
// operates on a all CSS selector strings
    $("#requestCancelAptBtn").delegate("a", "click", function () {
        window.setTimeout(function () {
            location.reload()
        }, 200);
    });

// if ie, the first "p" after every "h2" is given the "Large" class
    if ($.browser.msie) {
        $("h2 + p").addClass("Large");
    }

//browser sniffer - show/hide
    $(document).ready(function () {
        var is_chrome = navigator.userAgent.toLowerCase().indexOf('chrome');
        if (is_chrome > 1) {
            document.getElementById("chrome").style.display = "block";
        }
        else {
            document.getElementById("ff").style.display = "block";
        }
    });

//get URL parameters 
    $(document).ready(function () {
        //  Get the parameter value after the # symbol
        var url = document.URL.split('#')[1];
        if (url == undefined) {
            url = '';
        }
        // If the parameter exists create the message and insert into our paragraph
        if (url != '') {
            var message = 'You clicked ' + url;
            $('#parameter').text(message);
        }
    });

//Ajax Appointment Cancel functions
    function cancelAppointment(cancelAppointmentUrl) {
        var cancelUrl = cancelAppointmentUrl + "&cancelComments=" + $('#cancelComments').val();
        if ($('#cancelComments').val() != "") {
            $("#cancelAppointmentError").hide();
            //alert(cancelUrl);
            //jqtouch.goTo(cancelAppointmentUrl,"slideleft");
            jqtouch.showWaitingMessage("Cancelling Appointment...");
            //Do some work to delete the message.
            $.ajax({
                type: "GET",
                async: false,
                url: cancelUrl,
                success: cancelAppointmentSuccess,
                error: cancelAppointmentError
            });
        }
        else {
            if ($('#cancelComments').val() == "") {
                $("#cancelAppointmentError").show();

            }
        }
    }
});