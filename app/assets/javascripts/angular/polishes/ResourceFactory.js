var app = angular.module("myapp");

app.factory('ResourceFactory', ['$resource', function($resource) {
  console.log('here')
  return $resource('/polishes.json/:id')
}]);