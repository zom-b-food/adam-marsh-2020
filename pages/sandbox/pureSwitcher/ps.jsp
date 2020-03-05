<!DOCTYPE html>
<html lang="en">
<head>

	<title>pure jquery css switcher</title>
	<?php include "pages/demos/demoIncs.php"; ?>
	<script type="text/javascript" src="js/jquery-cookie.js"></script>
	<script type="text/javascript" src="js/pure-jquery-style-switcher.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$(".refresh").live("click", function () {
				//$("#content").load("ps.php")
				//return false;
				window.location.reload()
			});
		});

	</script>
	<style type="text/css">
		a:link, a:visited {
			color: #574D18;
		}

		.changer {
			float: right;
			color: #8c8c8c;
			padding-right: 5px;

			top: 166px;
		}

		.note {

			font-style: italic;
		}

		#content {
			clear: left;

			text-align: left;
		}


	</style>
</head>
<body class="popDiv">
<div class="col-lg-12">


	<div id="content">
		<h3>Pure jQuery Style Switcher</h3>
		<h4>Stylesheet Switcher Using jQuery</h4>

		<div style="float:left;"><a href="http://www.userfirst.com/creations/pure-jquery-style-switcher/"><span class="note">(Originally created by Scott D. Brooks at www.userfirst.com)</span></a></div>
		<div class="changer">PICK A STYLE: <a id="switchToBlueAnchor" class="refresh" href="#"><img src="images/style_blue.jpg" border="0" alt="blue"/></a> <a id="switchToRedAnchor" class="refresh" href="#"><img src="images/style_red.jpg" border="0" alt="red"/></a></div>
		<br class="clear"/>

		<p>Welcome to the demonstration page for the Pure jQuery Style Switcher written by Scott Brooks at <a href="http://www.userfirst.com/">User First Interactive</a>. The reason I created the Pure jQuery Style Switcher is because the most style switchers out there were PHP based and I wanted something that could be used that only required jQuery.</p>
		<h4>Here's the code</h4>

		<p>HTML code:</p>
<pre>
style_blue.jpg&quot; border=&quot;0&quot;&gt;&lt;/a&gt; &lt;a id=&quot;switchToRedAnchor&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;images/style_red.jpg&quot; border=&quot;0&quot;&gt;&lt;/a&gt;
</pre>
		<p>jQuery code:</p>
<pre>
function setStyle(myStyle) {
	if (myStyle == "red"){
		$('#created-by').attr("src","/pure-jquery-style-switcher/images/a-userfirst-website-red.jpg");
	}
	else{  // blue
		$('#created-by').attr("src","/pure-jquery-style-switcher/images/a-userfirst-website-blue.jpg");
	}
}

function setCookie(choosenStyle) {
	// javascript set
	$.cookie('style', null); 		// clear cookie
	$.cookie('style', choosenStyle); 	// set cookie
}

$(document).ready(function() {
	// stylesheet setup
	var headID = document.getElementsByTagName("head")[0];
	var cssNode = document.createElement('link');
	cssNode.type = 'text/css';
	cssNode.rel = 'stylesheet';

	var style_color = $.cookie('style');
	if (style_color != undefined) {
		cssNode.href = 'css/' + style_color + '.css';
	} else {
		cssNode.href = 'css/blue.css';
		style_color = "blue";
	}
	cssNode.media = 'screen';
	headID.appendChild(cssNode);
	// set style for the image src. Not required unless you are setting an image dynamically, like we do here.
	setStyle(style_color);

	// click actions
	$("#switchToBlueAnchor").click(function()
	{
		setStyle("blue");
		setCookie("blue");
	});

	$("#switchToRedAnchor").click(function()
	{
		setStyle("red");
		setCookie("red");
	});
});
</pre>


		<h4>Requires the <a href="js/jquery-cookie.js" target="_blank">Cookie Plugin for jQuery</a> written by Klaus Hartl</h4>
		<h4>Download the demo <a href="../pureSwitcher/pureSwitcher.zip">here</a>.</h4>


	</div>

</div>
</body>
</html>