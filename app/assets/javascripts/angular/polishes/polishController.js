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
    'PolishFactory',
    // 'Auth'
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
    };
    //go back to all polishes

    //go back to brand page
    $scope.addPolishState = function (polishId, state){
      var newObject = {state: $scope.state};
      PolishFactory.createStateWithAttachment(polishId, newObject).then(function(data) {
        console.log('success');
        $scope.states = PolishFactory.findStates($routeParams.id);
      });
    };
    $scope.editPolishState = function (polishId, state){
      PolishFactory.editPolishState(polishId, state)
      $scope.states = PolishFactory.findStates($routeParams.id);
    };
    $scope.deletePolishState = function (polishId, state){
      PolishFactory.deletePolishState(polishId, state)
      $scope.states = PolishFactory.findStates($routeParams.id);
    };
  }
})();