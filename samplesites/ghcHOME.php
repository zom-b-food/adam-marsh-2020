

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Samples</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
	<link type="text/css" rel="stylesheet" href="./styles/styles.css"/>
	<script type="text/javascript">
		function showDiv() {
			var ele1 = document.getElementById("home");
			var ele2 = document.getElementById("close");
			if (window.opener && window.opener.open && !window.opener.closed) {
				ele2.style.display = "block";
			}
			else {
				ele1.style.display = "block";
			}
		}
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

	</style>
</head>
<body onload="showDiv()">

<div id="sampleFrameDiv">
	<iframe name="sampleFrame" frameborder="0" scrolling="no" height="1060" width="100%" src="./samplesites/ghc1.php"></iframe>
</div>


</body>
</html>
