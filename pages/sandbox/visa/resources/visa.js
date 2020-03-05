

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
$().ready(function () {
//these are the buttons that do the actual moving content back and forth

    $('#add').click(function () {
        return !$('#select1 option:selected').remove().appendTo('#select2');
    });
    $('#remove').click(function () {
        return !$('#select2 option:selected').remove().appendTo('#select1');
    });
    $("#selectAll").click(function () {
        $('select option').attr("selected", "selected");
    });


// this writes classes and div id values to the newProf div for each item selected

    $("#btnUpdate").live("click", function () {
        $('.Spain').hide();
        $('.Egypt').hide();
        $('.Australia').hide();
        $('.Ecuador').hide();
        $('.Japan').hide();

        // this dynamically builds our links within the newProf div
        $('#select2 option').map(function () {
            return $('<a/>', {class: $(this).val(), id: 'enableProfiles' + $(this).val(),
                href: './includes/profile' + $(this).text() + '.html', text: $(this).text()}).get(); // or this.value / $(this).val()
        }).appendTo('#newProf');
        $("#select2").val();
    });

    $("#btnUpdate").click(function () {
        ToggleProfileDivs();
    });
    ToggleProfileDivs();

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

});

