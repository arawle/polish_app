(function(){
  'use strict';

  angular
    .module('myapp')
    .factory('PolishFactory', PolishFactory);

  PolishFactory.$inject = [
    '$http',
    '$resource'
  ];

  function PolishFactory ($http, $resource) {






    return PolishFactory;
  }
})();