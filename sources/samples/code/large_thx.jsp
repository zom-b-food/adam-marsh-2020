<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage=""; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"; ?>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>www.ui-design-engineering.com</title>
		<?php include "../inc/globalIncs.php"; ?>
		<link rel="stylesheet" href="./styles/forms-new.css" type="text/css"/>
	</head>
	<body>
		<div id="container-page">
			<div class="popDiv">
				<h3>Your form has been submitted</h3>
				<h4>Here is your form information:</h4>
				<br/>

				<p>First Name: <%= request.getParameter("firstname") %>
				</p>

				<p>Last Name: <%= request.getParameter("lastname") %>
				</p>

				<p>Username: <%= request.getParameter("username") %>
				</p>

				<p>Email: <%= request.getParameter("email") %>
				</p>

				<p>
					<%
						String select[] = request.getParameterValues("topic");
						if (select != null && select.length != 0) {
							out.println("Newsletters: ");
							for (int i = 0; i < select.length; i++) {
								out.println(select[i]);
							}
						}
					%>
				</p>
			</div>
		</div>
	</body>
</html>
