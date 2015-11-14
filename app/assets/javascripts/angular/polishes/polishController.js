(function() {
  'use strict';

  angular
    .module('myapp')
    .controller('polishController', polishController);

  polishController.$inject = [
    '$scope',
    '$location',
    '$routeParams',
    'ResourceFactory'
  ];

  function polishController($scope, $location, $routeParams, ResourceFactory){
    // console.log($routeParams)
    $scope.polish = ResourceFactory.get({id: $routeParams.id});

    // $scope.states = StateResourceFactory.get({id: $routeParams.id})
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

    $scope.addState = function (id, state){
      console.log(id)
      console.log(state)

      //add a polish state
    };
    $scope.editState = function (state){
      //edit a polish state
    };
    $scope.deleteState = function (state){
      //delete a polish state
    };
  }
})();