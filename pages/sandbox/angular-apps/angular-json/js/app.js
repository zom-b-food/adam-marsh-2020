'use strict';

/* App Module */

var demoApp = angular.module('demoApp', [
    'ngRoute',
    'demoAnimations',

    'demoControllers',
    'demoFilters',
    'demoServices'
]);

demoApp.config(['$routeProvider',
    function ($routeProvider) {
        $routeProvider.
            when('/critters', {
                templateUrl: 'partials/critters-list.php',
                controller: 'CritterListCtrl'
            }).
            when('/critters/:critterId', {
                templateUrl: 'partials/critter-detail.php',
                controller: 'CritterDetailCtrl'
            }).
            otherwise({
                redirectTo: '/critters'
            });
    }]);
