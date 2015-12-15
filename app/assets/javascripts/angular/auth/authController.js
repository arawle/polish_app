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