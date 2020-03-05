<!doctype html>
<html lang="en">
<head>

	<title>ajax</title>
	 <?php include "../../../sitewide/globals-pop.php"; ?>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/2.27.4/js/components/grid.min.js">
        <script>
        function showHint(str) {
            if (str.length == 0) {
                document.getElementById("txtHint").innerHTML = "";
                return;
            } else {
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                        document.getElementById("txtHint").innerHTML = xmlhttp.responseText;
                    }
                };
                xmlhttp.open("GET", "gethint.php?q=" + str, true);
                xmlhttp.send();
            }
        }
    </script>

</head>
<body class="popDiv">
<div class="uk-container-center">
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-1-1">
            <h3>Loading a PHP "hint" list via AJAX.</h3>
            <p><b>Start typing a name in the input field below:</b></p>
            <form>
                First name: <input type="text" onkeyup="showHint(this.value)">
            </form>
            <p>Suggestions: <span id="txtHint"></span></p>
    	</div>
    </div>
</div>
</body>
</html>
