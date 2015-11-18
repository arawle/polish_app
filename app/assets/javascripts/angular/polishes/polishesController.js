(function() {
  'use strict';

  angular
    .module('myapp')
    .controller('polishesController', polishesController);

  polishesController.$inject = [
    '$scope',
    '$location',
    '$timeout',
    'PolishesFactory',
    'ResourceFactory',
    'Upload'
  ];

  function polishesController($scope, $location, $timeout, PolishesFactory, ResourceFactory, Upload){
    $scope.allPolishes = ResourceFactory.query()
    $scope.polish = {}

    $scope.add= function() {
      var newObject = {polish: $scope.polish};
      PolishesFactory.createWithAttachment(newObject).then(function(data) {
        $location.path('/polishes/' + data.id);
      });
      $scope.polish = {};
      $scope.allPolishes = ResourceFactory.query();
    };

    $scope.show = function (polish){
      var polishPath = '/polishes/' + polish.id;
      $location.path(polishPath);
    };

    $scope.delete = function (polish){
      ResourceFactory.delete({id: polish.id})
      $scope.allPolishes = ResourceFactory.query();
    };
  }
})();






