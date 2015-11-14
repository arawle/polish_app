var app = angular.module("myapp");

app.factory('ResourceFactory', ['$resource', function($resource) {
  return $resource('/polishes/:id.json', {}, {update:{method:'PUT'}})
}]);

app.factory('StateResourceFactory', ['$resource', function($resource) {
  return $resource('/polishes/:polishes_id/states/:id.json', {}, {update:{method:'PUT'}})
}]);