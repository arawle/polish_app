(function(){
  'use strict';

  angular
    .module('myapp')
    .factory('PolishesFactory', PolishesFactory);

  PolishesFactory.$inject = ['$http'];

  function PolishesFactory ($http) {






    return PolishesFactory;
  }
})();