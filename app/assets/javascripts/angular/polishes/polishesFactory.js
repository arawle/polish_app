(function(){
  'use strict';

  angular
    .module('myapp')
    .factory('PolishesFactory', PolishesFactory);

  PolishesFactory.$inject = [
    '$http',
    '$resource'
  ];

  function PolishesFactory ($http, $resource) {






    return PolishesFactory;
  }
})();