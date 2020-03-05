<!doctype html>
<html lang="en" class="no-js">
<head>

	<?php include "../../../sitewide/globals-pop.php"; ?>
	<title>Samples</title>
	<link type="text/css" rel="stylesheet" href="./styles/styles.css"/>
	<script type="text/javascript">
		/*function showDiv() {
		 var ele1 = document.getElementById("home");
		 var ele2 = document.getElementById("close");
		 if (window.opener && window.opener.open) {
		 ele2.style.display = "block";
		 }
		 else {
		 ele1.style.display = "block";
		 }
		 }*/
	</script>
	<style type="text/css">
		#home, #close {
			display: none;
			text-align: center
		}

		.oc {
			width: 86px;
			height: 38px;
		}

		html, body {
			margin: 0 auto;
			width: 710px;
		}
	</style>
</head>
<body>
<%--<jsp:include page="/ServerCookie1" />--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"; ?>    --%>
<c:import url="/feedback.ServerCookieServer"/>
<jsp:include page="/samplesites/includes/samplesNav.inc"/>
<iframe name="sampleFrame" frameborder="0" scrolling="no" height="1160" width="100%"
        src="../samplesites/hilton1.php"></iframe>






<noscript>
	<img src="/axs/ax.pl?mode=img" height="1" width="1" style="display:none" alt=""/>
</noscript>
<script>
	(function (i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function () {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o),
				m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

	ga('create', 'UA-76825466-1', 'auto');
	ga('send', 'pageview');
</script>
</body>
</html>
