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
    $scope.polish = ResourceFactory.get({id: $routeParams.id});
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

  }
})();