(function() {
  'use strict';

  angular
    .module('myapp')
    .controller('navController', navController);

  navController.$inject = [
    '$scope',
    '$location',
    '$routeParams',
    'ResourceFactory',
  ];

  function navController($scope, $location, $routeParams, ResourceFactory){
    //update polish(admin only)

  }
})();