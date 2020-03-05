<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage=""; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Member XML Report</title>
		<?php include "../inc/globalIncs.php"; ?>
		<style type="text/css">
			html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
				font-size: 13px;
				background: none;
			}

			#memberDiv {
				line-height: 16px;
				padding: 22px 0 2px 6px;
			}

			.popDiv h3 {
				font-size: 1.15em;
			}
		</style>
		<script type="text/javascript">
			function loadXMLDoc(dname) {
				if (window.XMLHttpRequest) {
					xhttp = new XMLHttpRequest();
				}
				else {
					xhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				xhttp.open("GET", dname, false);
				xhttp.send("");
				return xhttp.responseXML;
			}

			function displayResult() {
				xml = loadXMLDoc("../sources/member.xml");
				xsl = loadXMLDoc("../sources/member.xsl");
				// code for IE
				if (window.ActiveXObject) {
					ex = xml.transformNode(xsl);
					document.getElementById("memberDiv").innerHTML = ex;
				}
				// code for Mozilla, Firefox, Opera, etc.
				else if (document.implementation && document.implementation.createDocument) {
					xsltProcessor = new XSLTProcessor();
					xsltProcessor.importStylesheet(xsl);
					resultDocument = xsltProcessor.transformToFragment(xml, document);
					document.getElementById("memberDiv").appendChild(resultDocument);
				}
			}
		</script>
	</head>
	<body onload="displayResult()">
		<div id="container-page">
			<div class="popDiv">
				<h3>Member XML Report</h3>

				<div id="memberDiv"/>
			</div>
		</div>
	</body>
</html>
