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
    //factories
  ];

  function polishController($scope, $location, $routeParams, ResourceFactory){
    //show polish

    //add polish

    //edit polish(admin only)

    //delete polish(admin only)

    //go back to all polishes

    //go back to brand page

  }
})();