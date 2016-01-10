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
    $scope.user;

    Auth.currentUser().then(function (user){
      return $scope.user = user;
    });
  }
})();