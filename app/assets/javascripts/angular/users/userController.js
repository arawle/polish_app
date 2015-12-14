(function() {
  'use strict';

  angular
    .module('myapp')
    .controller('userController', userController);

  userController.$inject = [
    '$scope',
    '$location',
    '$routeParams',
    'ResourceFactory',
    'UserFactory'
  ];

  function userController($scope, $location, $routeParams, ResourceFactory, UserFactory){
    //update polish(admin only)

  }
})();