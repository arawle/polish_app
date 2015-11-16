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


    $scope.uploadFile = function(file, errFile){
      console.log(file)


    }

    $scope.add = function (polish){
      polish.picture_file_name = $scope.uploadFile(polish.picture_file_name);
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






