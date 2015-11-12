var app = angular.module("myapp");

app.factory('ResourceFactory', ['$resource', function($resource) {
  return $resource('/polishes/:id')
}]);