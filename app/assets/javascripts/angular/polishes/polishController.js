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

    //edit polish(admin only)
    $scope.editPolish = function (polish){
      polish.$update({id: $routeParams.id});
    };
    //delete polish(admin only)

    //go back to all polishes

    //go back to brand page

  }
})();