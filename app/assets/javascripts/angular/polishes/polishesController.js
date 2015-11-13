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
    $scope.allPolishes = ResourceFactory.query()
    $scope.polish = {}

    $scope.add = function (polish){
      ResourceFactory.save(polish)
      $scope.polish = {};
      $scope.allPolishes = ResourceFactory.query();
    };

    $scope.show = function (polish){
      var polishPath = '/polishes/' + polish.id;
      $location.path(polishPath);
    };

    $scope.delete = function (polish){
      console.log(polish)
      ResourceFactory.delete({id: polish.id})
      $scope.allPolishes = ResourceFactory.query();
    };
  }
})();






