(function() {
  angular.module('myApp', ['myApp.filters', 'myApp.services', 'myApp.directives', 'myApp.controllers']).config([
    '$routeProvider', function($routeProvider) {
      $routeProvider.when('/view1', {
        templateUrl: 'partials/partial1.html',
        controller: 'MyCtrl1'
      });
      $routeProvider.when('/view2', {
        templateUrl: 'partials/partial2.html',
        controller: 'MyCtrl2'
      });
      return $routeProvider.otherwise({
        redirectTo: '/view1'
      });
    }
  ]);

}).call(this);

(function() {
  angular.module('myApp.controllers', []).controller('MyCtrl1', [function() {}]).controller('MyCtrl2', [function() {}]);

}).call(this);

(function() {
  angular.module('myApp.directives', []).directive('appVersion', [
    'version', function(version) {
      return function(scope, elm, attrs) {
        return elm.text(version);
      };
    }
  ]);

}).call(this);

(function() {
  angular.module('myApp.filters', []).filter('interpolate', [
    'version', function(version) {
      return function(text) {
        return String(text).replace(/\%VERSION\%/mg, version);
      };
    }
  ]);

}).call(this);

(function() {
  angular.module('myApp.services', []).value('version', '0.1');

}).call(this);
