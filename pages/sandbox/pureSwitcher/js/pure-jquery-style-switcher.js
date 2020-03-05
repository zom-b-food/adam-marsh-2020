/*
 * Pure jQuery Style Switcher (http://www.userfirstinteractive.com/)
 * @author Scott D. Brooks 
 * @created by UserFirst Interactive (creations@userfirstinteractive.com)
 * 
 */

function setStyle(myStyle) {
    if (myStyle == "red") {
        $('#created-by').attr("src", "./demos2/pureSwitcher/images/a-userfirst-website-red.jpg");

    }
    else {  // blue
        $('#created-by').attr("src", "./demos2/pureSwitcher/images/a-userfirst-website-blue.jpg");

    }
}

function setCookie(choosenStyle) {
    // javascript set
    $.cookie('style', null); 			// clear cookie
    $.cookie('style', choosenStyle); 	// set cookie
}


$(document).ready(function () {
    // stylesheet setup
    var headID = document.getElementsByTagName("head")[0];
    var cssNode = document.createElement('link');
    cssNode.type = 'text/css';
    cssNode.rel = 'stylesheet';

    var style_color = $.cookie('style');
    if (style_color != undefined) {
        cssNode.href = 'css/' + style_color + '.css';
    }
    else {
        cssNode.href = 'css/blue.css';
        style_color = "blue";
    }
    cssNode.media = 'screen';
    headID.appendChild(cssNode);
    // set style for the image src.  Not required unless you are setting an image dynamically, like we do here.
    setStyle(style_color);

    // click actions
    $("#switchToBlueAnchor").click(function () {
        setStyle("blue");
        setCookie("blue");
    });

    $("#switchToRedAnchor").click(function () {
        setStyle("red");
        setCookie("red");
    });

});