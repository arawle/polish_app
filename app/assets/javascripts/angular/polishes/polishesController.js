(function() {
  'use strict';

  angular
    .module('myapp')
    .controller('polishesController', polishesController);

  polishesController.$inject = [
    '$scope',
    '$location',
    'PolishesFactory',
    'ResourceFactory'
  ];

  function polishesController($scope, $location, PolishesFactory, ResourceFactory){
    // PolishesFactory.allPolish()
    // $scope.allPolish = PolishesFactory.polishes;
    $scope.allPolishes = ResourceFactory.query()
    $scope.polish = {}

    //show polishes

    //add polish
    $scope.add = function (polish){
      ResourceFactory.save(polish)
      $scope.polish = {};
      $scope.allPolishes = ResourceFactory.query();
    }

  }
})();