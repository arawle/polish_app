(function() {
  'use strict';

  angular
    .module('myapp')
    .controller('userController', userController);

  userController.$inject = [
    '$scope',
    '$location',
    '$routeParams',
    'Auth'

  ];

  function userController($scope, $location, $routeParams, Auth){

  }
})();