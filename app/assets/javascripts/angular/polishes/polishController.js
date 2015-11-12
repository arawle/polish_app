(function() {
  'use strict';

  angular
    .module('myapp')
    .controller('polishController', polishController);

  polishController.$inject = [
    '$location',
    '$routeParams'
    //factories
  ];

  function polishController($location, $routeParams){
    var vm = this;
    console.log(vm);
    //show polish

    //add polish

    //edit polish(admin only)

    //delete polish(admin only)

    //go back to all polishes

    //go back to brand page

  }
})();