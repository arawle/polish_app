(function(){
  'use strict';

  angular
    .module('myapp')
    .factory('PolishFactory', PolishFactory);

  PolishFactory.$inject = ['$http'];

  function PolishFactory ($http) {






    return PolishFactory;
  }
})();