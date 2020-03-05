<!DOCTYPE html>
<html lang="en">
<head>	<title>www.ui-design-engineering.com</title>
	<?php include "../../../sitewide/globals-pop.php"; ?>
       <link rel="stylesheet" media="screen" href="../../resources/css/pops.css">
</head>
<body class="popDiv">
<div class="uk-container-center">
	<div class="uk-grid" data-uk-grid-margin>
		<div class="uk-width-1-1">
			<h3>You Have Saved Data to the Server</h3>
			<p><a href="./sources/feedback.txt">View it here</a></p>
			<table cellpadding="4" cellspacing="1" border="0">
				<tr>
					<th style="border-right:1px solid #336633;" width="88px">Name</th>
					<th style="border-right:1px solid #336633;" width="88px">Alma Mater</th>
					<th style="border-right:1px solid #336633;" width="180px">Comments</th>
				</tr>
				<tr>
					<td style="border-right:1px solid #336633;"><%= request.getParameter("name") %>
					</td>
					<td style="border-right:1px solid #336633;"><%= request.getParameter("email") %>
					</td>
					<td style="border-right:1px solid #336633;"><%= request.getParameter("comments") %>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
</body>
</html>
