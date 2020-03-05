// shows - hides a div when a checkbox is checked
function Reveal(it, box) {
    var vis = (box.checked) ? "block" : "none";
    document.getElementById(it).style.display = vis;
}
function Hide(it, box) {
    var vis = (box.checked) ? "none" : "none";
    document.getElementById(it).style.display = vis;
}

//moves items from left select to right select
function MyMoveItem(fromObj, toObj) {
    for (var selIndex = fromObj.length - 1; selIndex >= 0; selIndex--) {
        // Is this option selected?
        if (fromObj.options[selIndex].selected) {
            // Get the text and value for this option.
            var newText = fromObj.options[selIndex].text;
            var newValue = fromObj.options[selIndex].value;

            // Create a new option, and add to the other select box.
            var newOption = new Option(newText, newValue)
            toObj[toObj.length] = newOption;

            // Delete the option in the first select box.
            fromObj[selIndex] = null;
        }
    }
}

//these are the buttons that do the actual moving content back and forth
$().ready(function () {
    $('#add').click(function () {
        return !$('#select1 option:selected').remove().appendTo('#select2');
    });
    $('#remove').click(function () {
        return !$('#select2 option:selected').remove().appendTo('#select1');
    });
    $("#selectAll").click(function () {
        $('select option').attr("selected", "selected");
    });
});

// this writes classes and div id values to the newProf div for each item selected

$().ready(function () {
    $("#btnUpdate").live("click", function () {

        $('.Spain').hide();
        $('.Egypt').hide();
        $('.Australia').hide();
        $('.Switzerland').hide();
        $('.Mexico').hide();
        $('.Russia').hide();
        $('.Ecuador').hide();
        $('.Japan').hide();

        $('#select2 option').map(function () {
            return $('<div/>', {class: 'iframe cboxElement' + ' ' + $(this).text(), id: 'enableProfiles' + $(this).text(), style: '', href: './includes/profile' + $(this).text() + '.php', text: $(this).text()}).get(); // or this.value / $(this).val()
        }).appendTo('#newProf');
        //$('#newProf>div').addClass('modalBlock');
        $("#select2").val();
    });
});


$().ready(function () {
    $('.btnCancel').click(function () {
        $('.Spain').hide();
        $('.Egypt').hide();
        $('.Australia').hide();
        $('.Switzerland').hide();
        $('.Mexico').hide();
        $('.Russia').hide();
        $('.Ecuador').hide();
        $('.Japan').hide();
    });
});


$().ready(function () {
    $("#btnUpdate").click(function () {
        ToggleProfileDivs();
    });
    ToggleProfileDivs();
});
function ToggleProfileDivs() {
    var allProfiles = [];
    var s = document.getElementById("select2");
    for (var i = 0; i < s.options.length; i++) {
        if (s.options[i].selected == true) {
            var profid = s.options[i].value;
            allProfiles.push(profid);
        }
    }


}
$().ready(function () {

    $("#sVT").click(function () {
        $("div.vt").hide();
        $("div.sa").show();
        $("dd#virtualTerminal").slideDown();
        $("dd#secureAcceptance").slideUp();
        $("#sVT > h2").removeClass("narrowoff");
        $("#sVT > h2").addClass("narrowon");
        $("#sSA > h2").removeClass("narrowon");
        $("#sSA > h2").addClass("narrowoff");

    });

    $("#sSA").click(function () {
        $("div.sa").hide();
        $("div.vt").show();
        $("dd#secureAcceptance").slideDown();
        $("dd#virtualTerminal").slideUp();
        $("#sSA > h2").removeClass("narrowoff");
        $("#sSA > h2").addClass("narrowon");
        $("#sVT > h2").removeClass("narrowon");
        $("#sVT > h2").addClass("narrowoff");

    });


});
