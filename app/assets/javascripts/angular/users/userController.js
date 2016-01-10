(function() {
  'use strict';

  angular
    .module('myapp')
    .controller('userController', userController);

  userController.$inject = [
    '$scope',
    '$location',
    '$routeParams',
    'UserFactory',
    'Auth'
  ];

  function userController($scope, $location, $routeParams, UserFactory, Auth){
    $scope.user;
    $scope.collection = UserFactory.getCollection($routeParams.id);

    Auth.currentUser().then(function (user){
      return $scope.user = user;
    });


  }
})();