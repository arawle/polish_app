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
    'Auth'
  ];

  function navController($scope, $location, $routeParams, ResourceFactory, Auth){
    $scope.signedIn = Auth.isAuthenticated;
    $scope.logout = Auth.logout;
    $scope.user;

    Auth.currentUser().then(function (user){
      return $scope.user = user;
    });

    $scope.$on('devise:new-registration', function (e, user){
      $scope.user = user;
    });

    $scope.$on('devise:login', function (e, user){
      $scope.user = user;
    });

    $scope.$on('devise:logout', function (e, user){
      $scope.user = {};
    });

  }
})();