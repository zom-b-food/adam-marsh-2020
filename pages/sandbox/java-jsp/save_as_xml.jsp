<!doctype html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
	<title>pure jquery css switcher</title>
	<?php include "../../../sitewide/globals-pop.php"; ?>
       <link rel="stylesheet" media="screen" href="../../resources/css/pops.css">
	<script type="text/javascript" src="./sandbox/java-jsp/js/jquery.validate.min.js" charset="utf-8"></script>
	<style type="text/css">
		#SayWhat label.error {
			clear: both;
			float: left;
			color: red;
			text-align: left;
			font-weight: normal;
			width: 180px !important;
		}
	</style>
	<script type="text/javascript">
		$(document).ready(function () {
			$("#SayWhat").validate();
		});
	</script>
</head>
<body class="popDiv">
<div class="uk-container-center">
	<div class="uk-grid" data-uk-grid-margin>
		<div class="uk-width-1-1">
			<h3>Form data is saved to a servlet then converted into an xml file.</h3>
			<form name="SayWhat" id="SayWhat" method="post" action="./xml.XmlServletServer">
				<br/>
				<table>
					<tr>
						<th colspan="2">Complete the form (with your own stuff, of course)</th>
					</tr>
					<tr>
						<td><label for="FileName">Destination:</label></td>
						<td><input type="text" name="FileName" id="FileName" class="MEDformField text required" placeholder="Beijing"/></td>
					</tr>
					<tr>
						<td><label for="AirLine">Airline:</label></td>
						<td><input type="text" name="AirLine" id="AirLine" class="MEDformField text required" placeholder="China Air"/></td>
					</tr>
					<tr>
						<td><label for="FlightNumber">Flight Number:</label></td>
						<td><input type="text" name="FlightNumber" id="FlightNumber" class="SHORTformField text required" placeholder="158"/></td>
					</tr>
					<tr>
						<td><label for="PassengerName">Passenger Name:</label></td>
						<td><input type="text" name="PassengerName" id="PassengerName" class="LONGformField text required" placeholder="Adam Marsh"/></td>
					</tr>
					<tr>
						<td colspan="2" align="right"><input class="mbtn" type="submit" name="Submit" value="Save"/></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>
</body>
</html>