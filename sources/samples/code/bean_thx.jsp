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
		<%! String name; %>
		<jsp:useBean id="userBean" scope="request" class="com.userinfo.UserBean">
			<jsp:setProperty name="userBean" property="userName" param="userName"/>
		</jsp:useBean>
		<%! String[] locales; %>
		<jsp:useBean id="foo" scope="request" class="checkbox.CheckTest">
			<jsp:setProperty name="foo" property="locale" param="locale"/>
		</jsp:useBean>
		<div id="container-page">
			<div class="popDiv">
				<h3>Your form has been submitted</h3>
				<h4>Here is your form information:</h4>

				<p class="strong">
					<%
						name = userBean.getUserName();
					%>
					<%
						if (name != "") {
					%>
					<%
							out.println("Hello, " + name + " (your name is stored in Java Bean)");
						} else out.println("You did not enter your name.");
					%>
				</p>

				<p class="strong">
					The checked locations (got using request) are: </p>
				<%
					locales = request.getParameterValues("locale");
				%>
				<ul class="fancybulletBig">
					<%
						if (locales != null) {
							for (int i = 0; i < locales.length; i++) {
					%>
					<li>
						<%
									out.println(util.HTMLFilter.filter(locales[i]));
								}
							} else out.println("You did not select a locale.");
						%></li>
				</ul>
				<p class="strong">
					The checked locations (got using beans) are </p>
				<%
					locales = foo.getLocale();
				%>
				<ul class="fancybulletBig">
					<%
						if (!locales[0].equals("1")) {
							for (int i = 0; i < locales.length; i++) {
					%>
					<li>
						<%
									out.println(util.HTMLFilter.filter(locales[i]));
								}
							} else out.println("You did not select a locale.");
						%></li>
				</ul>
			</div>
		</div>
	</body>
</html>
