<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage=""; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>JQuery Form Validation</title>
		<?php include "../inc/globalIncs.php"; ?>
		<script type="text/javascript" src="./scripts/jquery.validate.min.js" charset="utf-8"></script>
		<link rel="stylesheet" href="./styles/forms-new.css" type="text/css"/>
		<style type="text/css">
			#signupForm {
				width: 640px;
			}

			#signupForm label.error {
				margin-right: 100px;
				text-align: left;
				width: 180px !important;
			}

			#newsletter_topics label.error {
				display: none;
				margin-right: 100px;
			}

			form.cmxform .gray * {
				color: gray;
			}
		</style>
		<script type="text/javascript">
			$().ready(function () {
				// validate signup form on keyup and submit
				$("#signupForm").validate({
					rules: {
						firstname: "required",
						lastname: "required",
						username: {
							required: true,
							minlength: 2
						},
						password: {
							required: true,
							minlength: 5
						},
						confirm_password: {
							required: true,
							minlength: 5,
							equalTo: "#password"
						},
						email: {
							required: true,
							email: true
						},
						topic: {
							required: "#newsletter:checked",
							minlength: 2
						},
						agree: "required"
					},
					messages: {
						firstname: "Please enter your firstname",
						lastname: "Please enter your lastname",
						username: {
							required: "Please enter a username",
							minlength: "Your username must be at least 2 characters long"
						},
						password: {
							required: "Please provide a password",
							minlength: "Your password must be at least 5 characters long"
						},
						confirm_password: {
							required: "Please provide a password",
							minlength: "Your password must be at least 5 characters long",
							equalTo: "Please enter the same password as above"
						},
						email: "Please enter a valid email address",
						agree: "Please accept our policy"
					}
				});

				// propose username by combining first- and lastname
				$("#username").focus(function () {
					var firstname = $("#firstname").val();
					var lastname = $("#lastname").val();
					if (firstname && lastname && !this.value) {
						this.value = firstname + "." + lastname;
					}
				});

				//code to hide topic selection, disable for demo
				var newsletter = $("#newsletter");
				// newsletter topics are optional, hide at first
				var inital = newsletter.is(":checked");
				var topics = $("#newsletter_topics")[inital ? "removeClass" : "addClass"]("gray");
				var topicInputs = topics.find("input").attr("disabled", !inital);
				// show when newsletter is checked
				newsletter.click(function () {
					topics[this.checked ? "removeClass" : "addClass"]("gray");
					topicInputs.attr("disabled", !this.checked);
				});
			});
		</script>
	</head>
	<body>
		<div id="container-page">
			<div class="popDiv">
				<h3>JQuery Form Validation</h3>
				<h4>JQuery form validation form</h4>

				<div id="formContent">
					<form class="cmxform" id="signupForm" method="get" action="./demos3/large_thx.php">
						<fieldset>
							<legend>Validating a Complete Form</legend>
							<table width="480" cellpadding="4" cellspacing="1">
								<tr>
									<th colspan="2">Please complete the form</th>
								</tr>
								<tr>
									<td width="180" nowrap="nowrap"><label for="firstname">First Name:</label></td>
									<td><input id="firstname" class="text" name="firstname"/></td>
								</tr>
								<tr>
									<td><label for="lastname">Last Name:</label></td>
									<td><input id="lastname" class="text" name="lastname"/></td>
								</tr>
								<tr>
									<td><label for="username">Username:</label></td>
									<td><input id="username" class="text" name="username"/></td>
								</tr>
								<tr>
									<td><label for="password">Password:</label></td>
									<td><input id="password" class="text" name="password" type="password"/></td>
								</tr>
								<tr>
									<td><label for="confirm_password">Confirm password:</label></td>
									<td><input id="confirm_password" class="text" name="confirm_password"
									           type="password"/></td>
								</tr>
								<tr>
									<td><label for="email">Email:</label></td>
									<td><input id="email" class="text" name="email" type="email"/></td>
								</tr>
								<tr>
									<td><label for="agree">Please agree to our policy:</label></td>
									<td><input type="checkbox" id="agree" name="agree"/></td>
								</tr>
								<tr>
									<td nowrap="nowrap"><label for="newsletter">I'd like to receive the
										newsletter:</label></td>
									<td><input type="checkbox" id="newsletter" name="newsletter"/></td>
								</tr>
							</table>
							<p>&nbsp;</p>

							<div id="newsletter_topics">
								<table width="480" cellpadding="4" cellspacing="1" border="0">
									<tr>
										<td colspan="5">Topics (select at least two) - note: would be hidden when
											newsletter
											isn't selected, but is visible here for the demo
										</td>
									</tr>
									<tr>
										<td><label for="topic_marketflash" style="float:left;">
											<input type="checkbox" id="topic_marketflash" value="*Marketflash "
											       name="topic"/>
											Marketflash</label></td>
										<td rowspan="3" valign="top"><label class="error">Please select at least two
											topics</label></td>
									</tr>
									<tr>
										<td>
											<label for="topic_photo" style="float:left;">
												<input type="checkbox" id="topic_photo" value=" *Photoshooter "
												       name="topic"/>
												Photoshooter</label></td>
									</tr>
									<tr>
										<td>
											<label for="topic_coupon" style="float:left;">
												<input type="checkbox" id="topic_coupon" value=" *Coupon Cuisine"
												       name="topic"/>
												Coupon Cuisine</label></td>
									</tr>
								</table>
							</div>
							<p>
								<input class="mbtn submit" type="submit" value="Submit"/>
							</p>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>