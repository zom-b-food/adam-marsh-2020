<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>FB Share</title>
		<style type="text/css">
				/* common */
			* {
				margin: 0;
				padding: 0;
			}

			body {
				font: normal 14px Arial, sans-serif;
				line-height: 15px;
				color: #000
			}

			a {
				text-decoration: none;
			}

				/* large */
			.fb_share_large .fb_sharecount {
				line-height: 140%;
				display: block;
				padding-top: 1px;
				background-color: #3b5998;
				color: #fff;
				font-family: "Helvetica", tahoma, verdana, arial, sans-serif;
				text-align: center;
				height: 47px;
				margin-bottom: 2px;
				-webkit-border-radius: 2px;
				-moz-border-radius: 2px;
			}

			.fb_share_large .fb_sharecount .count {
				display: block;
				margin: auto;
				margin-top: 5px;
				font-size: 25px;
				height: 20px;
				padding-top: 2px;
				width: 42px;
				overflow: hidden;
			}

			.fb_share_large .fb_sharecount .shares {
				display: block;
				font-size: 11px;
				margin-top: -1px;
			}

			.fb_share_large .fb_sharecount_zero {
				display: block;
				background: url('http://static.fbshare.me/f_only.png') no-repeat 20px 5px;
				background-color: #3b5998;
				width: 53px;
				height: 47px;
				margin-bottom: 2px;
				-webkit-border-radius: 2px;
				-moz-border-radius: 2px;
			}

			.fb_share_large .fb_sharecount_zero {
				/* PNG Alpha IE Win ONLY */
				_background-image: url('http://static.fbshare.me/f_only.gif');
			}

			.fb_share_large .fb_sharebutton {
				display: block;
				padding: 0px 0px 0px 3px;
				width: 48px;
				height: 16px;
				color: #3B5998;
				font-size: 11px;
				font-weight: normal;
				font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
				text-align: left;
				border: 1px solid #d8dfea;
				background: url('http://static.fbshare.me/fb_sq_small.png') no-repeat top right;
				background-color: #fff;
			}

			.fb_share_large a.fb_sharebutton:hover {
				color: #fff;
				background-color: #3b5998;
				border: 1px solid #295582;
			}

			.fb_share_large .count.count-1k {
				font-size: 20px;
			}

			.fb_share_large .count.count-10k {
				font-size: 24px;
			}

				/* small */
			.fb_share_small {
				float: right;
				background-color: transparent;
			}

			.fb_share_small .fb_sharebutton {
				display: block;
				padding: 0px 0px 0px 3px;
				width: 48px;
				height: 16px;
				color: #3B5998;
				font-size: 11px;
				font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
				text-align: left;
				border: 1px solid #d8dfea;
				background: url('http://static.fbshare.me/fb_sq_small.png') no-repeat top right;
				background-color: #fff;
			}

			.fb_share_small a:hover {
				color: #fff;
				background-color: #3b5998;
				border-color: #295582;
			}

			.fb_share_small .fb_sharecount {
				position: absolute;
				top: 1px;
				right: 52px;
				font-size: 14px;
				font-weight: bold;
				margin-right: 3px;
				color: #3b5998;
			}

			.fb_share_small .count-1k {
				font-size: 12px;
			}

			.fb_share_small .count-10k {
				font-size: 13px;
			}
		</style>
		<script type="text/javascript">
			function share() {
				window.open('http://www.facebook.com/sharer.php?u=&t=', 'sharer', 'toolbar=0,status=0,width=626,height=436');
				return false;
			}
		</script>
	</head>
	<body>
		<div class="fb_share_small">
			<a href="http://www.facebook.com/share.php?u="
			   title="Share this on Facebook"
			   class="fb_sharebutton"
			   onclick="return share();"
			   target="_blank">Share</a>
		</div>
	</body>
</html>
