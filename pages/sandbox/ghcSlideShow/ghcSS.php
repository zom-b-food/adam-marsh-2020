<!doctype html>
<html lang="en">
<head>
	<title>jQuery slider example</title>
	<?php include "pages/demos/demoIncs.php"; ?>
	<script src="./pages/demos/scripts/jquery.cycle.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="ghcAuto.css" type="text/css"/>
	<script type="text/javascript">
		$(function () {
			$('#slideshow').cycle({ fx: 'fade', pager: '#nav', slideExpr: 'img'});
			$('#slideshow #nav a').click(function () { $('#slideshow').cycle('pause') });
		});
	</script>
	<style type="text/css">
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
	</style>
</head>
<body class="popDiv">
<div class="col-lg-12">

	<div class="">
		<h3>JQuery Slideshow</h3>

		<h4>Jquery autoplay slideshow</h4>

		<div id="mainUppr">
			<div id="slideshow" class="fl">
				<div id="nav"></div>
				<a href="#" target="_self">
					<img title="Lorem ipsum dolor sit amet, consectetuer adipiscing..." src="1.jpg" class="first"/> </a>
				<a href="#" target="_self">
					<img title="Lorem ipsum dolor sit amet, consectetuer adipiscing..." src="2.jpg"/> </a>
				<a href="#" target="_self">
					<img title="Lorem ipsum dolor sit amet, consectetuer adipiscing..." src="3.jpg"/> </a>
				<a href="#" target="_self">
					<img title="Lorem ipsum dolor sit amet, consectetuer adipiscing..." src="4.jpg"/> </a>
			</div>
			<br class="clear"/>
		</div>
	</div>
</div>
</body>
</html>
