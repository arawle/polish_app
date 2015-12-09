(function(){
  'use strict';

  angular
    .module('myapp')
    .factory('PolishFactory', PolishFactory);

  PolishFactory.$inject = [
    '$http',
    '$resource',
    'Upload',
    '$q'
  ];

  function PolishFactory ($http, $resource, Upload, $q) {
    var PolishFactory = {};
    PolishFactory.polish = [];

    PolishFactory.findStates = function(id){
      var polish = '/polishes/' + id + '/states'
      PolishFactory.polish = [];
      $http.get(polish)
      .success(function(data){
        PolishFactory.polish.push(data);
      })
      .error(function(data){
        console.log('Error: ' + data);
      });
      return PolishFactory.polish;
    };

    PolishFactory.createStateWithAttachment = function(polishId, formData){
      var deferred = $q.defer();
      var url = "//localhost:3000/polishes/" + polishId + "/states";
      sendState(formData, "POST", url).then(function(data){
        deferred.resolve(data);
      });
      return deferred.promise;
    };

    function sendState(formData, method, url){
      console.log(formData)
      var deferred = $q.defer();
      Upload.upload({
        url: url,
        method: method,
        fields: formData,
        file: formData.state.bottleshot,
        fileFormDataName: 'state[bottleshot]',
      })
      .then(function(resp){
        deferred.resolve(resp.data);
      }, function(resp){
        console.log('Error status: ' + resp.status);
      });
      return deferred.promise;
    };

    PolishFactory.addPolishState = function(polishId, state){
      var states = '/polishes/' + polishId + '/states'
      $http.post(states, state)
      .success(function(data){
        console.log('success');
      })
      .error(function(data){
        console.log('Error: ' + data);
      });
    };

    PolishFactory.editPolishState = function (polishId, state){
      var url = '/polishes/' + polishId + '/states/' + state.id
      $http.put(url, state)
      .success(function(data){
        console.log('success');
      })
      .error(function(data){
        console.log('Error: ' + data);
      });
    };

    PolishFactory.deletePolishState = function (polishId, state){
      var url = '/polishes/' + polishId + '/states/' + state.id
      $http.delete(url, state)
      .success(function(data){
        console.log('success');
      })
      .error(function(data){
        console.log('Error: ' + data);
      });
    };
  return PolishFactory;
  }
})();