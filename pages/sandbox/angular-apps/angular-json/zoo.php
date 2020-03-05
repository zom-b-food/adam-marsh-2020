<!doctype html>
<html lang="en" ng-app="demoApp">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Google critter Gallery</title>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/angular-json.css">
	<link rel="stylesheet" href="css/uikit.min.css">

	<link rel="stylesheet" href="css/app.css">
	<link rel="stylesheet" href="css/animations.css">

	<script src="./bower_components/jquery/dist/jquery.js"></script>
	<script src="./bower_components/angular/angular.js"></script>
	<script src="./bower_components/angular-animate/angular-animate.js"></script>
	<script src="./bower_components/angular-route/angular-route.js"></script>
	<script src="./bower_components/angular-resource/angular-resource.js"></script>
	<script src="js/app.js"></script>
	<script src="js/animations.js"></script>
	<script src="js/controllers.js"></script>
	<script src="js/filters.js"></script>
	<script src="js/services.js"></script>
</head>
<body>

<div class="view-container">
	<div><img src="./img/zoobanner.png"/></div>
	<div ng-view class="view-frame"></div>


</div>

</body>

</html>
