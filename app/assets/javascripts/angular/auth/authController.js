(function() {
  'use strict';

  angular
    .module('myapp')
    .controller('authController', authController);

  authController.$inject = [
    '$scope',
    '$location',
    '$routeParams',
    'ResourceFactory',
    'Auth'
  ];

  function authController($scope, $location, $routeParams, ResourceFactory, Auth){

    $scope.login = function() {
      Auth.login($scope.user).then(function(){
        console.log($scope.user)
        $location.path( "/polishes" );
      });
    };

    $scope.register = function() {
      Auth.register($scope.user).then(function(){
        console.log('signed up')
      });
    };

    $scope.logout = function() {
      Auth.logout($scope.user).then(function(){
        console.log('logged out')
      });
    };
  };

})();