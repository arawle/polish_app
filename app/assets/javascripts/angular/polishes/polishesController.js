(function() {
  'use strict';

  angular
    .module('myapp')
    .controller('polishesController', polishesController);

  polishesController.$inject = [
    '$scope',
    '$location',
    'PolishesFactory'
  ];

  function polishesController($scope, $location, PolishesFactory){
    $scope.allPolish = PolishesFactory.polishes;
    $scope.polish = {}

    //show polishes

    //add polish
    $scope.add = function (polish){
      console.log('test')
      console.log(polish);
    }

  }
})();