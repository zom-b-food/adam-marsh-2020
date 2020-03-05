<!DOCTYPE html>
<html>
<head>
	<title>www.ui-design-engineering.com</title>
	<?php include "pages/demos/demoIncs.php"; ?>
	<script src="jquery.min.js"></script>
	<style type="text/css">

		@import url("reset.css");
		@import url("grid.css");

		* {
			margin: 0;
			padding: 0;
		}

		.popDiv {
			padding-left: 0 !important;
		}

		html, body {
			height: 100%;
		}

		.clear {
			clear: both;
		}

			/* this is to keep footer at the bottom and not fixed */
		.zinio {
			min-height: 100%;
			margin: 0 auto 384px;
			width: 100%;
		}

		.push {
			clear: both;
			height: 148px;
		}

			/* new Zion footer styles not in footer.css */
		@font-face {
			font-family: minionPro;
			src: local(minionPro), url('MinionPro-MediumIt.otf') format('opentype');
		}

		@font-face {
			font-family: sourceSansPro;
			src: local(sourceSansPro), url('SourceSansPro.otf') format('opentype');
		}
		h3 {
			color: #fff;
		font-family: Candara, sans-serif;
		font-size: 1rem;
		font-weight: bold;
		text-align: left;
		padding: 1px 0 4px 12px;
		background-color: #cccccc;
		border-bottom: 1px solid #000033;
		border-top: 1px solid #000033;
		}
		.footer {
			background-color: #324757;
			clear: both;
			color: #cdcfd0;
			height: 130px;
			margin: 0 auto;
			width: 100%;
			padding-top: 12px;
		}

		.chooserFly {
			font-size: 12px;
			padding-left: 55px;
			color: #cdcfd0;
		}

		span.strong {
			font-weight: bold;
		}
	</style>
	<link rel="stylesheet" href="footerFly.css" type="text/css"/>
	<script src="footerFly.js"></script>
</head>
<body class="popDiv">

<div class="zinio">
	<div class="push">&nbsp;</div>
	<div style="margin-left:300px; margin-top:200px;"><span class="strong">Click the Flag icon in the footer. </span></div>
</div>
<div class="footer">
	<div class="grid10">
		<div class="col8">&nbsp;</div>
		<div class="col2 omega">
			<div class="chooserFly" id="region-picker" style="">
				<img src="flag_USA.png" alt="language icon"/> USA <img src="upArrow.png" alt="up arrow"/>
				<?php include "f-footerFly.php"; ?>
				<div class="inside">&nbsp;</div>
			</div>
		</div>
	</div>
	<div class="grid10">

		<div class="col9">
			<a href="/"><img src="./resources/images/ui/logo.jpg" alt="Adam Marsh" class="footer-logo"></a>
		</div>
	</div>
	<div class="grid10">

		<div class="col9" id="footer-slogan">
			<p>Lorem ipsum... <span class="copyright">built by Adam Marsh</span></p>
		</div>

	</div>
	<div class="clear"></div>


</div>


</body>
</html>
