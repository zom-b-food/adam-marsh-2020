<!doctype html>
<html lang="en">
<head>

	<title>ajax</title>
	 <?php include "../../../sitewide/globals-pop.php"; ?>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/2.27.4/js/components/grid.min.js">

</head>
<body class="popDiv">
<div class="uk-container-center">
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-1-1">
            <h3>Loading XML content/file via AJAX.</h3>
            <button type="button" onclick="loadDoc()">Get Travel List</button>
            <br><br>
            <table id="demo"></table>
            <script>
                function loadDoc() {
                    var xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function() {
                        if (xhttp.readyState == 4 && xhttp.status == 200) {
                            myFunction(xhttp);
                        }
                    };
                    xhttp.open("GET", "getxml.xml", true);
                    xhttp.send();
                }
                function myFunction(xml) {
                    var i;
                    var xmlDoc = xml.responseXML;
                    var table="<tr><th>City</th><th>State</th><th>Country</th><th>Date</th></tr>";
                    var x = xmlDoc.getElementsByTagName("stops");
                    for (i = 0; i <x.length; i++) {
                        table += "<tr><td>" +
                                x[i].getElementsByTagName("city")[0].childNodes[0].nodeValue +
                                "</td><td>" +
                                x[i].getElementsByTagName("state")[0].childNodes[0].nodeValue +
                                "</td><td>" +
                                x[i].getElementsByTagName("country")[0].childNodes[0].nodeValue +
                                "</td><td>" +
                                x[i].getElementsByTagName("date")[0].childNodes[0].nodeValue +
                                "</td></tr>";
                    }
                    document.getElementById("demo").innerHTML = table;
                }
            </script>
    	</div>
    </div>
</div>
</body>
</html>
