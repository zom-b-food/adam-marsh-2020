<!DOCTYPE html>
<html lang="en-gb" dir="ltr">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>www.adam-marsh.com - sandbox</title>

		<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.20/angular.min.js"></script>
		<style type="text/css">
			html, body {background:white;}
			.my-box {
				width:400px;
				background-color:#eeeeee;
				margin:50px auto;
				border:1px solid #cccccc;
				border-radius: 4px;
				padding:14px;
			}

			.links a {
				color: #058695;
			}

			.rating {
				background-color: #c7eae6;
				margin: 0;
				padding: 0;
			}

			ul.rating {
				display: inline-block;
			}

			.rating li {
				list-style-type: none;
				display: inline-block;
				padding: 1px;
				text-align: center;
				font-weight: bold;
				cursor: pointer;
				font-size: 20px;
				color: #eeeeee;
			}

			.rating .filled {
				color: #058695;
				/*go hawks*/
			}

			.clear {
				margin-top: 20px;
			}

			.counter {
				position: relative;
				float: left;
				left: 150px;
			}

			h3 {
				color: #000033;
				font-family: Candara, sans-serif;
				font-size: 1rem;
				font-weight: bold;
				text-align: left;
				padding: 1px 0 4px 12px;
				background-color: #cccccc;
				border-bottom: 1px solid #000033;
				border-top: 1px solid #000033;
			}

			h5 {
				font-weight: 700 !important;
				/*i want sass*/
			}
		</style>
		<script>
			var rateMeApp = angular.module('rateMeApp', []);

			rateMeApp.controller('RateMeCtrl', ['$scope', function ($scope) {
				$scope.rating = 0;
				$scope.ratings = [
					{
						current: 3,
						max: 5
					}
				];

				$scope.getSelectedRating = function (rating) {
					console.log(rating);
				}

				$scope.setMinrate = function () {
					$scope.ratings = [
						{
							current: 1,
							max: 5
						}
					];
				}

				$scope.setMaxrate = function () {
					$scope.ratings = [
						{
							current: 5,
							max: 5
						}
					];
				}

			}]);

			rateMeApp.directive('starRating', function () {
				return {
					restrict: 'A',
					template: '<ul class="rating">' +
							'<li ng-repeat="star in stars" ng-class="star" ng-click="toggle($index)">' +
							'\u2605' +
							'</li>' +
							'</ul>',
					scope: {
						ratingValue: '=',
						max: '=',
						onRatingSelected: '&'
					},
					link: function (scope, elem, attrs) {

						var updateStars = function () {
							scope.stars = [];
							for (var i = 0; i < scope.max; i++) {
								scope.stars.push({
									filled: i < scope.ratingValue
								});
							}
						};

						scope.toggle = function (index) {
							scope.ratingValue = index + 1;
							scope.onRatingSelected({
								rating: index + 1
							});
						};

						scope.$watch('ratingValue', function (oldVal, newVal) {
							if (newVal) {
								updateStars();
							}
						});
					}
				}
			});
		</script>
	</head>
	<body ng-app="rateMeApp" class="popDiv">
		<div class="uk-container-center">
			<div class="uk-grid" data-uk-grid-margin>
				<div class="uk-width-medium-1-1">
					<h3>Angular.js Ratings App</h3>

					<div ng-controller="RateMeCtrl" class="my-box">

							<p>How do you like my widget?</p>

							<div ng-repeat="rating in ratings">
								<div class="counter">
									<h5>{{rating.current}} / {{rating.max}}</h5></div>
								<div star-rating rating-value="rating.current" max="rating.max"
								     on-rating-selected="getSelectedRating(rating)"></div>
							</div>

						<div class="clear">
							<div class="btn-toolbar" role="toolbar">
								<div class="btn-group" role="group">
									<button data-ng-click="setMinrate()">The Worst</button>
									<button data-ng-click="setMaxrate()">The Best</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
