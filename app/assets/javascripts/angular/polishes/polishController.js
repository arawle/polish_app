(function() {
  'use strict';

  angular
    .module('myapp')
    .controller('polishController', polishController);

  polishController.$inject = [
    '$scope',
    '$location',
    '$routeParams',
    'ResourceFactory',
    'PolishFactory'
  ];

  function polishController($scope, $location, $routeParams, ResourceFactory, PolishFactory){
    $scope.polish = ResourceFactory.get({id: $routeParams.id});
    $scope.states = PolishFactory.findStates($routeParams.id);
    //update polish(admin only)
    $scope.updatePolish = function (polish){
      $scope.polish.$update({id: polish.id})
    };
    //delete polish(admin only)
    $scope.deletePolish = function (polish){
      ResourceFactory.delete({id: polish.id})
      $location.path('/polishes');
    }
    //go back to all polishes

    //go back to brand page

    $scope.addPolishState = function (id, state){
      PolishFactory.addPolishState(id, state);
      $scope.states = PolishFactory.findStates($routeParams.id);
    };
    $scope.editState = function (state){
      //edit a polish state
    };
    $scope.deleteState = function (polishId, state){
      PolishFactory.deleteState(polishId, state)
      $scope.states = PolishFactory.findStates($routeParams.id);
    };
  }
})();