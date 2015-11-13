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
    var polishId = $routeParams.id
    console.log(polishId)
    ResourceFactory.get();
    //show polish

    //add polish

    //edit polish(admin only)
    $scope.editPolish = function (polish){
      polish.$update();
    };
    //delete polish(admin only)

    //go back to all polishes

    //go back to brand page

  }
})();