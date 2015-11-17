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
    var PolishFactory = {};
    PolishFactory.polish = [];

    PolishFactory.findStates = function(id){
      var polish = '/polishes/' + id + '/states'
      PolishFactory.polish = [];
      $http.get(polish)
      .success(function(data){
        console.log(data)
        PolishFactory.polish.push(data);
      })
      .error(function(data){
        console.log('Error: ' + data);
      });
      return PolishFactory.polish;
    };

    PolishFactory.addPolishState = function(polishId, state){
      console.log(polishId.type)
      console.log(state)
      var states = '/polishes/' + polishId + '/states'
      $http.post(states, state)
      .success(function(data){
        console.log('success')
      })
      .error(function(data){
        console.log('Error: ' + data)
      })
    }
    return PolishFactory;
  }
})();