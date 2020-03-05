<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>DOM</title>
		<?php include "../../../sitewide/globals-pop.php"; ?>

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
			.web {
			  position:absolute;
			  margin-left:-1000px;
			  z-index: 0;
			}
			.chart {
				width: auto;
				margin: 0;
				padding: 0;
			}
			.chart:nth-of-type(1) {
				background-color: #D9E6EE;
			}
			.chart:nth-of-type(2) {
				background-color: #E2E7EB;
			}
			.chart:nth-of-type(3) {
				background-color: #D0DDED;
			}
			.box {
				height: 156px;
				margin: 1px;
				padding: 4px;
				width: 30%;
				overflow: hidden;
				display: inline-block;
				background: transparent;
			}
			.box-middle {
				height: 156px;
				margin: 1px;
				padding: 4px;
				width: 30%;
				overflow: hidden;
				display: inline-block;
				background: transparent;
				border-left: 1px dotted #7F9BC3;
				border-right: 1px dotted #7F9BC3;
			}
			ol li {
				font-size: 12px;
			}
			p.append {
				height: 60px;
				overflow: hidden;
			}

		</style>
	</head>
	<body class="popDiv">
		<div class="uk-container-center">
			<div class="uk-grid" data-uk-grid-margin>
				<div class="uk-width-1-1">
					<h3>Run-of-the-mill js behaviors some folks find entertaining.</h3>
					<p>View source to see what's going on under the hood.</p>
					<div class="chart">
						<div class="box">
							<script>
								$(document).ready(function () {
									$("p#cb1").css("display", "none")
									$("button.callback1").click(function () {
										$("p.cb1").hide("slow", function () {
											var myTimer = window.setTimeout(function () {
												$("#cb1").slideDown(250);
											}, 600);
											/*alert("The paragraph is now hidden");*/
										});
									});
								});
							</script>
							<button class="callback1">Callback 1</button>
							<br/>
							<p class="cb1">This is a paragraph with little content.</p>
							<p id="cb1">Holy crap! Did that sentence just vanish?!</p>
						</div>
						<div class="box-middle">
							<script>
								$(document).ready(function () {
									$("button.callback2").click(function () {
										document.getElementById('output').innerHTML += ('going ...');
										var myTimer1 = window.setTimeout(function () {
											document.getElementById('output').innerHTML += ('going ...');
										}, 700);
										var myTimer2 = window.setTimeout(function () {
											document.getElementById('output').innerHTML += ('gone, to the gentleman in the plaid jacket!');
										}, 1400);
									});
								});
							</script>
							<button class="callback2">Callback 2</button>
							<br/>
							<p id="output"></p>
						</div>
						<div class="box">
							<script>
								$(document).ready(function () {
									$("button.ca").click(function () {
										var someFn = function (obj, cb, params) {
											cb.apply(obj, params);
											return 1;
										};
										var result = someFn({
											someProperty: 'interview'

										}, function (param1, param2) {
											document.getElementById('ca1').innerHTML += ('This pointing to', this);
											document.getElementById('ca2').innerHTML += ('Param 1 is', param1);
											document.getElementById('ca3').innerHTML += ('Param 2 is', param2);
											console.log('Param 2 is', param2);
										}, ['hot', 'java']);
										document.getElementById('ca4').innerHTML += ('Result is', result);
									});
								});
							</script>
							<button class="ca">call() &amp; apply()</button>
							<br/>
							<span>&nbsp;(check the console log)</span>
							<br/>
							<p id="ca1"></p>
							<p id="ca2"></p>
							<p id="ca3"></p>
							<p id="ca4"></p>
						</div>
					</div>
					<hr/>
					<div class="chart">

						<div class="box">
							<script>
								function test() {
									// Assumes: a string is entered into the "palin" text box Results: tests if the string is a palindrome and returns the conclusion to outputDiv
									var word,
										copy,
										i;
									word = document.getElementById("palin").value.toLowerCase();
									copy = "";
									i = 0;

									while (i < word.length) {
										copy = word.charAt(i) + copy;
										i = i + 1;
									}
									console.log(copy);

									if (word === copy) {
										document.getElementById("outputDiv").innerHTML = document.getElementById("palin").value + " is a palindrome!";
									} else {
										document.getElementById('outputDiv').innerHTML = document.getElementById('palin').value + " is not a palindrome!";
									}
								}
							</script>
							<div>
								<input type="text" name="palin" id="palin"/>
							</div>
							<div id="apDiv3">
								<input type="submit" name="button" id="button" value="Is text a palindrome" onclick="test()"/>
							</div><br/>
							<div id="outputDiv"></div>
						</div>
						<div class="box-middle">
							<script>
								$(document).ready(function () {
									$("#btn1").click(function () {
										$("p.append").append("<br/>Star Trek, of course.<br/>");
									});
								});
							</script>
							<button id="btn1">Append to p</button>
							<br/>
							<p class="append">Star Wars or Star Trek?</p>
						</div>
						<div class="box">
							<script>
								$(document).ready(function () {
									$("button.closure1").click(function () {
										function pizzaParty(numSlices) {
											var topping = "spinache";
											/* Local variable */
											innerFunction = function () {
												var topping = "gorgonzola";
												document.getElementById('output6').innerHTML += (" .....But put " + topping + " on " + numSlices + " slices");
											};
											document.getElementById('output7').innerHTML += ("This pizza is all about the " + topping);
											/*console.log("This pizza is all about the " + topping);*/
											innerFunction();
										}
										pizzaParty(3);
									});
								});
							</script>
							<button class="closure1">Closure</button>
							<br/>
							<p id="output6"></p>
							<p id="output7"></p>
						</div>
					</div>
					<hr/>
					<div class="chart">
						<div class="box">
							<script>
								$(document).ready(function () {
									var colors = [
										'#3498db',
										'#e67e22',
										'#16a085',
										'#f39c12',
										'#2c3e50',
										'#7f8c8d',
										'#2980b9'
									];
									var color = 0;
									$("button.clickarray").click(function () {
										{
											color = (color == colors.length - 1)
												? 0
												: color;
											x = document.getElementById("clickarray"); // Find the element
											x.style.color = colors[++color];
										}
									});
								});
							</script>
							<button type="button" class="clickarray">Click Array</button>
							<br/>
							<p id="clickarray">Hi, this is a string of text.</p>
						</div>
						<div class="box-middle">
							<script>
								$(document).ready(function () {
									$("button.loop").click(function () {
										function printing() {
											document.getElementById('loop1').innerHTML += (('Are you'));
											//console.log(1);
											setTimeout(function () {
												document.getElementById('loop2').innerHTML += (('going to'));
											}, 500);
											setTimeout(function () {
												document.getElementById('loop3').innerHTML += (('Scarborough'));
											}, 1000);
											setTimeout(function () {
												document.getElementById('loop4').innerHTML += (('fair?'));
											}, 1500);
										}
										printing();
									});
								});
							</script>
							<button type="button" class="loop">Loop</button>
							<br/>
							<p id="loop1"></p>
							<p id="loop2"></p>
							<p id="loop3"></p>
							<p id="loop4"></p>
						</div>
						<div class="box">
							<script>
								u1newareacode = new Array(new Array(new Array("---"), new Array("602"), new Array("623")), new Array(new Array("---"), new Array("213"), new Array("323"), new Array("408"), new Array("415"), new Array("619"), new Array("858")), new Array(new Array("---"), new Array("720"), new Array("970")), new Array(new Array("---"), new Array("312"), new Array("708"), new Array("773")), new Array(new Array("---"), new Array("617"), new Array("857")), new Array(new Array("---"), new Array("336"), new Array("704"), new Array("919"), new Array("980")), new Array(new Array("---"), new Array("702")), new Array(new Array("---"), new Array("347"), new Array("917")), new Array(new Array("---"), new Array("503"), new Array("971")), new Array(new Array("---"), new Array("803")), new Array(new Array("---"), new Array("517"), new Array("703")), new Array(new Array("---"), new Array("206"), new Array("253"), new Array("425")));
								function fillSelectFromArray(selectCtrl, itemArray, goodPrompt, badPrompt, defaultItem) {
									var i,
										j;
									var prompt;
									// empty existing items
									for (i = selectCtrl.options.length; i >= 0; i--) {
										selectCtrl.options[i] = null;
									}
									prompt = (itemArray != null)
										? goodPrompt
										: badPrompt;
									if (prompt == null) {
										j = 0;
									} else {
										selectCtrl.options[0] = new Option(prompt);
										j = 1;
									}
									if (itemArray != null) {
										// add new items
										for (i = 0; i < itemArray.length; i++) {
											selectCtrl.options[j] = new Option(itemArray[i][0]);
											if (itemArray[i][1] != null) {
												selectCtrl.options[j].value = itemArray[i][1];
											}
											j++;
										}
										// select first item (prompt) for sub list
										selectCtrl.options[0].selected = true;
									}
								}
							</script>
							<h4 style="margin-top:0;">Dynamic Array</h4>
							<form action="" name="activate1">
								<select id="u1State" name="u1State" onchange="fillSelectFromArray(this.form.u1NewAreaCode, ((this.selectedIndex == -1) ? null : u1newareacode[this.selectedIndex-1]));">
									<option value="">Select State</option>
									<option value="AZ">Arizona</option>
									<option value="CA">California</option>
									<option value="CO">Colorado</option>
									<option value="IL">Illinois</option>
									<option value="MA">Massachusettes</option>
									<option value="NC">North Carolina</option>
									<option value="NV">Nevada</option>
									<option value="NY">New York</option>
									<option value="OR">Oregon</option>
									<option value="SC">South Carolina</option>
									<option value="VA">Virginia</option>
									<option value="WA">Washington</option>
								</select>
								<br/>
								<br/>
								<select id="u1NewAreaCode" name="u1NewAreaCode">
									<option value="" selected="selected">Pick Area Code</option>
								</select>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>


	</body>
</html>
