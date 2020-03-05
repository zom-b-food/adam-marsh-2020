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

			</style>
</head>
<body class="popDiv">
	<div class="uk-container-center">
		<div class="uk-grid" data-uk-grid-margin>
			<div class="uk-width-1-1">
				<h3>AJAX Callbacks using js Promises</h3>
				<h4>View Source to copy/examine the source</h4>
				<p>Best way to avoid "callback hell" is to use an ES6 js promise. Super cool.   </p>
				<hr/>
				<ul id="status"></ul>

				<h4>profile</h4>
				<pre id="profile-pre"></pre>
				<h4>tweets</h4>
				<pre id="tweets-pre"></pre>
				<h4>friend</h4>
				<pre id="friend-pre"></pre>
				<script>
					var $status = $('#status');
					//get profile, then tweets, then mentioned friend
					$.get('profile.json').then(function(profile) {
						$status.append('<li>got profile</li>');
						$('#profile-pre').html(JSON.stringify(profile));
						return $.get('tweets.json?id=' + profile.id);
						}).then(function(tweets) {
							$status.append('<li>got tweets</li>');
							$('#tweets-pre').html(JSON.stringify(tweets));
							//get friend mentioned in first tweet
							return $.get('friend.json?id=' + tweets[0].usersMentioned[0].id)
							}).then(function(friend) {
							  $status.append('<li>got mentioned friend</li>');
							  $('#friend-pre').html(JSON.stringify(friend));
							}, handleError);


							function handleError(xhr, status, error) {
							  $status.append('<li>error:'+error.toString()+'</li>');
							}
				</script>
			</div>
		</div>
	</div>
</body>
</html>
