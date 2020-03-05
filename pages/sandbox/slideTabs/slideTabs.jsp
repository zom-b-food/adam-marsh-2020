<!doctype html>
<html lang="en">
	<head>
		<title>jQuery slider example</title>
		<?php include "../../../sitewide/globals-pop.php"; ?>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/2.27.4/js/components/grid.min.js">

			<script type="text/javascript">
				$(document).ready(function () {
					//Initialize Set the selector in the first tab
					$(".cont .TabMenu span:first").addClass("selector");

					//Basic hover action
					$(".cont .TabMenu span").mouseover(function () {
						$(this).addClass("hovering");
					});
					$(".cont .TabMenu span").mouseout(function () {
						$(this).removeClass("hovering");
					});

					//Add click action to tab menu
					$(".cont .TabMenu span").click(function () {
						//Remove the exist selector
						$(".selector").removeClass("selector");
						//Add the selector class to the sender
						$(this).addClass("selector");

						//Find the width of a tab
						var TabWidth = $(".TabContent:first").width();
						if (parseInt($(".TabContent:first").css("margin-left")) > 0)
							TabWidth += parseInt($(".TabContent:first").css("margin-left"));
						if (parseInt($(".TabContent:first").css("margin-right")) > 0)
							TabWidth += parseInt($(".TabContent:first").css("margin-right"));

						//But wait, how far we slide to? Let find out
						var newLeft = -1 * $("span").index(this) * TabWidth;
						//Ok, now slide
						$(".AllTabs").animate({
							left: + newLeft + "px"
						}, 1000);
					});
				});
			</script>
			<style type="text/css">

				.cont {
					background: url("slideTabbg.png");
					width: 388px;
					height: 300px;
					overflow: hidden;
					margin: auto;
				}
				.selector {
					background: url("selector.png");
				}
				.hovering {
					background: url("selector.png");
					opacity: 0.5;
				}
				.cont .TabMenu {
					position: relative;
					top: 5px;
					left: 2px;
					z-index: 10;
				}
				.cont .TabMenu span {
					display: inline-block;
					height: 77px;
					margin: 0;
					padding: 0;
				}
				.cont .ContentFrame {
					width: 360px;
					height: 206px;
					left: 10px;
					position: relative;
					overflow: hidden;
				}
				.cont .ContentFrame .AllTabs {
					position: relative;
					left: 0;
					width: 1190px;
					height: 206px;
					overflow: hidden;
				}
				.cont .ContentFrame .AllTabs .TabContent {
					width: 360px;
					height: 200px;
					margin-right: 20px;
					text-align: justify;
					float: left;
					overflow: hidden;
				}

			</style>

		</head>
		<body class="popDiv">
			<div class="container">

				<h3>JQuery Sliding Tabs</h3>

				<h4>Jquery sliding div/tabs</h4>

				<div class="cont">
					<div class="TabMenu">
						<span>
							<img src="Contact.png" alt=""/>
						</span>
						<span>
							<img src="iPod.png" alt=""/>
						</span>
						<span>
							<img src="Drive.png" alt=""/>
						</span>
					</div>
					<div class="ContentFrame">
						<div class="AllTabs">
							<div class="TabContent">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed lacus. Pellentesque lacus. Mauris ac libero. Nam tellus ipsum, volutpat in, vehicula vel, lacinia vitae, augue. Vestibulum enim nunc, porttitor sed, molestie sed, adipiscing sed,
									mauris. Proin augue. Phasellus venenatis metus at tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin felis. Suspendisse adipiscing velit sit amet sem tempor feugiat. Maecenas nulla nunc, suscipit a,
									aliquam sit amet, tincidunt a, urna. Praesent dignissim nunc quis metus.
								</p>
							</div>
							<div class="TabContent">
								<p>
									Aliquam at sem. Vestibulum fermentum. Donec rhoncus, turpis in molestie aliquam, arcu sem lobortis ante, ac condimentum nulla urna in justo. Nulla urna risus, hendrerit vitae, porttitor sed, vestibulum at, orci. Pellentesque et nisi. Sed dictum
									libero eu sapien. Aliquam erat volutpat. Aliquam non neque. Pellentesque sed dolor. Pellentesque ut nisi.
								</p>

								<p>
									Proin sodales nibh vel velit. Etiam enim nunc, commodo vel, varius eget, volutpat ut, quam. Mauris quis urna. Morbi a augue. Mauris urna libero, posuere eget, pellentesque id, feugiat vel, arcu. Nullam quam mauris, varius et, vehicula at, pharetra
									id, tellus. Ut ac orci et nulla facilisis mollis. Phasellus mauris. Morbi quam. Proin bibendum felis sed est. Fusce urna. Cras imperdiet sollicitudin nunc. Praesent aliquet mauris et elit.
								</p>
							</div>
							<div class="TabContent">
								<p>
									Pellentesque a ante sit amet arcu imperdiet congue. Morbi justo augue, pulvinar nec, pharetra fermentum, elementum sed, justo. Morbi vel sem. Pellentesque pharetra massa non leo aliquet consectetur. Nulla tincidunt. Fusce eget ligula a ipsum
									adipiscing gravida. Nullam cursus nibh non lectus. Sed eget enim. Donec sit amet odio. Morbi vel erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec suscipit est sit amet turpis. Donec rutrum vulputate
									eros. Curabitur metus. Morbi placerat faucibus tortor. Maecenas lorem urna, gravida sed, blandit id, pulvinar ac, sem. Vestibulum faucibus tempus leo. Morbi tincidunt euismod mi. Pellentesque habitant morbi tristique senectus et netus et malesuada
									fames ac turpis egestas.
								</p>

								<p>
									Curabitur commodo augue id mauris. Maecenas sagittis accumsan nunc. Pellentesque lectus enim, consectetur quis, aliquam quis, molestie sed, ante. Ut sed libero. Integer a nulla vitae erat aliquet fringilla. Pellentesque habitant morbi tristique
									senectus et netus et malesuada fames ac turpis egestas. Aenean mattis lectus in nisi. Mauris iaculis pede at eros. Morbi et orci sit amet mauris feugiat posuere. Nullam eu mauris. Nulla elementum laoreet neque. Suspendisse mollis, nunc et adipiscing
									fringilla, tellus ante gravida mauris, in pellentesque nisl eros vel est. Praesent tincidunt porttitor neque. Mauris felis nibh, congue ut, euismod a, malesuada a, ante. Etiam odio quam, dapibus sit amet, lobortis bibendum, hendrerit fringilla, diam.
									Nullam pede neque, pellentesque ut, egestas ut, facilisis ut, leo. Quisque hendrerit, elit et placerat consequat, nibh tortor pellentesque quam, vel bibendum quam purus ut massa. Nullam ante. Sed dapibus erat sed enim. Donec rhoncus.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</body>
	</html>
