<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Samples</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link type="text/css" rel="stylesheet" href="./styles/styles.css"/>
	</head>
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
			background-color: #ccdaba;
			width: 86px;
			height: 38px;
		}

		body {
			background-color: #2e5951;
		}
	</style>
	<body onload="showDiv()">
		<div class="header" style="border-bottom: 6px solid #2E5951;">
			<table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td class="oc"><a id="home" href="../home.php">Home</a></td>
					<td align="center" nowrap bgcolor="#FFFFFF"><a target="sampleFrame" href="./ghc1.php"><img
							class="mo"
							onmouseout="this.style.opacity=1;this.filters.alpha.opacity=100"
							onmouseover="this.style.opacity=0.4;this.filters.alpha.opacity=40"
							src="images/ghcLogo.png"
							name="ghcBut"
							alt="GroupHealth"
							border="0"></a>
					</td>
					<td align="center" nowrap bgcolor="#FFFFFF"><a target="sampleFrame" href="./hilton1.php"><img
							class="mo"
							onmouseout="this.style.opacity=1;this.filters.alpha.opacity=100"
							onmouseover="this.style.opacity=0.4;this.filters.alpha.opacity=40"
							src="images/hiltonLogo.png"
							name="hiltonBut"
							alt="Hilton"
							border="0"></a>
					</td>
					<td align="center" nowrap bgcolor="#0A6CCE"><a target="sampleFrame" href="./ms1.php"><img class="mo"
					                                                                                          onmouseout="this.style.opacity=1;this.filters.alpha.opacity=100"
					                                                                                          onmouseover="this.style.opacity=0.4;this.filters.alpha.opacity=40"
					                                                                                          src="images/msLogo.png"
					                                                                                          name="msBut"
					                                                                                          alt="Microsoft"
					                                                                                          border="0"></a>
					</td>
					<td align="center" nowrap bgcolor="#eeeeee"><a target="sampleFrame" target="sampleFrame"
					                                               href="./att1.php"><img class="mo"
					                                                                      onmouseout="this.style.opacity=1;this.filters.alpha.opacity=100"
					                                                                      onmouseover="this.style.opacity=0.4;this.filters.alpha.opacity=40"
					                                                                      src="images/attLogo.png"
					                                                                      name="attBut" alt="AT&amp;T"
					                                                                      border="0"></a></td>
					<td align="center" nowrap bgcolor="#cccccc" style="border-right:1px solid #003366;"><a
							target="sampleFrame"
							href="./sotto1.php"><img
							class="mo" onmouseout="this.style.opacity=1;this.filters.alpha.opacity=100"
							onmouseover="this.style.opacity=0.4;this.filters.alpha.opacity=40"
							src="images/sottoLogo.png"
							name="sottoBut" alt="Sotto Wireless" border="0"></a></td>
					<td class="oc"><a id="close" href="#" onclick="window.close()">Close</a></td>
				</tr>
			</table>
		</div>
		<div id="sampleFrameDiv">
			<iframe name="sampleFrame" frameborder="0" scrolling="no" height="660" width="100%"
			        src="./samplesites/att1.php"></iframe>
		</div>
	</body>
</html>
