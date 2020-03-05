<!doctype html>
<html lang="en" class="no-js">
<head>
	<title>Welcome</title>
	<?php include "../../../sitewide/globals-pop.php"; ?>
    <link rel="stylesheet" media="screen" href="../../resources/css/pops.css">
	<script type="text/javascript" src="./sandbox/java-jsp/js/jquery.validate.min.js" charset="utf-8"></script>
	<style type="text/css">
		#commentForm2 label.error, #commentForm3 label.error, .error {
			clear: both;
			float: left;
			color: red;
			text-align: left;
			font-weight: normal;
			width: 180px !important;
		}
	</style>
</head>

<jsp:useBean id="adduser" scope="page" class="demopool.AddUsers"/>

<%--<jsp:setProperty name="addusers" property="*"/>--%>

<body class="popDiv">
<div class="uk-container-center">
	<div class="uk-grid" data-uk-grid-margin>
		<div class="uk-width-1-1">
			<h3>Register / Login Servlets (via MySQL db)</h3>
			<form action="./demopool.demoLogin" method="get" id="commentForm2" name="commentForm2">
				<br/>
				<table>
					<th colspan="2">Login Here</th>
					<%

						String oops = (String) session.getAttribute("oops");

						if (oops == null)

							oops = "";

					%>
							<span class="error"><%= oops %>
							</span>
					<%--value="${fn:escapeXml(emailAddress)}"--%>
					<tr>
						<td><label for="emailAddress">Email Address:</label></td>
						<td><input name="emailAddress" id="emailAddress" class="MEDformField email text required" value="${emailAddress}"
						           type="text"/></td>
					</tr>
					<tr>
						<td><label for="userName">Password:</label></td>
						<td><input type="password" name="userName" id="userName" class="MEDformField text required" value="${userName}"/></td>
					</tr>
					<tr>
						<td colspan="2" align="right"><input id="submitBtn1" class="mbtn" type="submit" value="Log in"/></td>
					</tr>
				</table>
			</form>
			<p>&nbsp;</p>
			<form action="./demopool.demoRegister" method="get" id="commentForm3" name="commentForm3">
				<table>
					<th colspan="2">Register Here</th>
					<%

						String sorry = (String) session.getAttribute("sorry");

						if (sorry == null)

							sorry = "";

					%>

							<span class="error"><%= sorry %>
							</span>
					<tr>
						<td><label for="emailAddress">Email Address:</label></td>
						<td><input name="emailAddress" id="emailAddress" class="MEDformField text email required"
						           type="text" placeholder="email"/></td>

					</tr>
					<tr>
						<td><label for="userName">Password:</label></td>
						<td><input type="password" name="userName" id="userName" class="MEDformField text required" placeholder="password"/></td>
					</tr>
					<tr>
						<td colspan="2" align="right"><input id="submitBtn2" class="mbtn" type="submit" value="Register Now"/></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript" src="./resources/js/pages/login.js" charset="utf-8"></script>
</body>
</html>