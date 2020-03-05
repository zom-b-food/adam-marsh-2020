<%@ page contentType="text/html"; ?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"; ?>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"; ?>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"; ?>
<sql:setDataSource dataSource="jdbc/demo"/>
<html>
	<head>
		<title>Process</title>
		<script type="text/javascript">
			function redir() {
				name = document.getElementById("userName").value
				email = document.getElementById("emailAddress").value


				<!--new new -->
				if ((name == "guest" ) && (email == "guest@home.com" )) {
					document.showGallery.action = "./gallery/amber/home.php";
				}
				<!--new port -->
				else if ((name == "ironic" ) && (email == "adam.marsh@sotto.com" )) {
					{
						document.showGallery.action = "./gallery/johnson/home.php";
					}
				}
				else if ((name == "1" ) && (email == "1@1" )) {
					{
						document.showGallery.action = "./gallery/amber/home.php";
					}
				}
				<!--port new -->

				else {
					document.showGallery.action = "./gallery/login.php";
				}
				document.showGallery.submit();
			}
		</script>
	</head>
	<body onLoad="redir()">
		<form action="" name="showGallery" method="post">
			<input type="hidden" name="userName" id="userName" value="${fn:escapeXml(param.userName)}">
			<input type="hidden" name="emailAddress" id="emailAddress" value="${fn:escapeXml(param.emailAddress)}"/>
			<input type="hidden" name="userName" id="userName" value="<%=request.getParameter("userName")%>">
			<input type="hidden" name="emailAddress" id="emailAddress"
			       value="<%=request.getParameter("emailAddress")%>"/>
			<!--  <input style="float:right;" class="mbtn" type="submit" value="Confirm" onClick="redir()" onMouseOver="mmover(this)" onMouseOut="mmout(this)"> -->
		</form>
	</body>
</html>
