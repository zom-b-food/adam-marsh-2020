<!doctype html>

<html lang="en">
<%@ page import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*"; ?>

<%

	DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
	DocumentBuilder db = dbf.newDocumentBuilder();
	// Document doc = db.parse("http://localhost:8181/adam-marsh/sources/xmldoc.xml");
	Document doc = db.parse("/home/toshi/public_html/ui-design-engineering.com/sources/xmldoc.xml");
	NodeList FileName = doc.getElementsByTagName("FileName");
	NodeList AirLine = doc.getElementsByTagName("AirLine");
	NodeList FlightNumber = doc.getElementsByTagName("FlightNumber");
	NodeList PassengerName = doc.getElementsByTagName("PassengerName");

%>

<head>
	<title>show xml data</title>
<?php include "../../../sitewide/globals-pop.php"; ?>
       <link rel="stylesheet" media="screen" href="../../resources/css/pops.css">
</head>
<body class="popDiv">
<div class="uk-container-center">
	<div class="uk-grid" data-uk-grid-margin>
		<div class="uk-width-1-1">
			<h3>XML to JSP</h3>
			<p><a href="./sources/xmldoc.xml">View it here</a><br/> (Refresh [F5] the xml page if it's not your data)</p>
			<p>&nbsp;</p>
			<table cellpadding="4" cellspacing="1" border="0">
				<tr>
					<th style="border-right:1px solid #336633;" width="88px">Destination</th>
					<th style="border-right:1px solid #336633;" width="88px">Airline</th>
					<th style="border-right:1px solid #336633;" width="88px">Flight Number</th>
					<th width="100px">Passenger Name</th>
				</tr>
				<%
					int i;
					for (i = 0; i <= FileName.getLength() - 1; i++)
					{
				%>
				<tr>
					<td style="border-right:1px solid #336633;"><%= FileName.item(i).getFirstChild().getNodeValue()%>
					</td>
					<td style="border-right:1px solid #336633;"><%= AirLine.item(i).getFirstChild().getNodeValue()%>
					</td>
					<td style="border-right:1px solid #336633;"><%= FlightNumber.item(i).getFirstChild().getNodeValue()%>
					</td>
					<td><%= PassengerName.item(i).getFirstChild().getNodeValue()%>
					</td>
				</tr>
				<%}%>
			</table>
		</div>
	</div>
</div>
</body>
</html>