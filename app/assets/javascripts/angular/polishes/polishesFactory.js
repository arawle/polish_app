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
    var PolishesFactory = {};

    PolishesFactory.polishes = [];

    return PolishesFactory;
  }
})();