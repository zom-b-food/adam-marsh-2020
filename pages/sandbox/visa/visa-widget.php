<!DOCTYPE html>
<html lang="en-gb" dir="ltr">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>widget component - visa redesign</title>

<link rel="stylesheet" href="resources/uikit.min.css">

<script src="resources/uikit.min.js"></script>

		<script src="resources/jquery-1.8.3.min.js" type="text/javascript"></script>
		<script src="resources/visa.js"></script>
		<link type="text/css" rel="stylesheet" href="resources/widget.css"/>

	</head>
	<body>

		<main id="content">
			<div class="uk-container uk-container-center middle">
				<div class="uk-grid" data-uk-grid-margin>

					<div class="w-box">
						<article>
							<h3>JS/JQuery Dynamic Widget</h3>
							<p>Dynamic widget that builds a URL based on user input from two select fields and then
								writes an array of
								itself with clickable links built at runtime that opens content in a lightwindow. </p>
							<p>Select and configure the products (Boxes) the merchant may use below.</p>

								<div class="blBox" style="margin-left:5px;">


										<div id="sSA" class="blBox">

												<h4 class="narrowoff saAccordion">Secure Acceptance</h4>

											<div id="secureAcceptance">

													<strong>Select Profiles</strong>

													<div class="saPicker">
														<table cellpadding="0" cellspacing="0" height="144px;">
															<tbody>
																<tr>
																	<th width="220px" class="head">Disabled Profiles
																		<div id="selectAll"
																		     style="float:right; padding-top:0;"
																		     class="head"> Select All
																		</div>
																	</th>
																	<th width="48px" rowspan="2"><a href="#"
																	                                id="add"><img
																			class="arrow" src="resources/move_right.png"/></a>
																		<br/>
																		<a href="#" id="remove"><img class="arrow"
																		                             src="resources/move_left.png"/></a>
																	</th>
																	<th width="220px" class="head">Enabled Profiles</th>
																</tr>
																<tr>
																	<td><select name="disable" multiple="" id="select1"
																	            class="select1">
																		<option value="Spain">Spain</option>
																		<option value="Egypt">Egypt</option>
																		<option value="Australia">Australia</option>
																		<option value="Ecuador">Ecuador</option>
																		<option value="Japan">Japan</option>
																	</select>
																	</td>
																	<td><select name="enable" id="select2"
																	            class="select2" multiple="" size="2">
																		<!-- this select is filled with items from other select at runtime  -->
																	</select>
																	</td>
																</tr>
															</tbody>
														</table>
														<div class="mar10Btm flRt">
															<input type="button" id="btnUpdate" name="update"
															       class="btnBl btnUpdate"
															       align="right" value="Update"/>

														</div>
													</div>

											</div>
										</div>
										<div id="newProf">
											<!-- links to lightwindows will be built here at runtime -->
										</div>

										<div class="pre">
                                  <pre>
  // This dynamically builds our links within the newProf div
	   for each option selected.
        $('#select2 option').map(function () {
         return $('[a\]', {class: $(this).val(), id: 'enableProfiles'
         + $(this).val(),
         href: './includes/profile' + $(this).text() + '.php', text: $(this).text()}).get();
  // or this.value / $(this).val()
          }).appendTo('#newProf');
          $("#select2").val();
                               </pre>
										</div>
									</div>

						</article>
					</div>
				</div>
			</div>
		</main>

	</body>
</html>

