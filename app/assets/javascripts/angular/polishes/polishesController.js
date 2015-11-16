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
      Upload.upload({
          url:'http://localhost.3000/polishes',
          data: {file: file}
        }).then(function (resp) {
            console.log('Success ' + resp.config.data.file.name + 'uploaded. Response: ' + resp.data);
        }, function (resp) {
            console.log('Error status: ' + resp.status);
        }, function (evt) {
            var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
            console.log('progress: ' + progressPercentage + '% ' + evt.config.data.file.name);
        });

    }

    $scope.add= function() {
      var newObject = {polish: $scope.polish};
      PolishesFactory.createWithAttachment(newObject).then(function(data) {
        $location.path('/polishes/' + data.id);
      });
      $scope.polish = {};
      $scope.allPolishes = ResourceFactory.query();
    };




    // $scope.add = function (polish){
    //   polish.picture_file_name = $scope.uploadFile(polish.picture_file_name);
    //   ResourceFactory.save(polish)
    //   $scope.polish = {};
    //   $scope.allPolishes = ResourceFactory.query();
    // };

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






