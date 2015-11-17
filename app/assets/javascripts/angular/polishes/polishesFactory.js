(function(){
  'use strict';

  angular
    .module('myapp')
    .factory('PolishesFactory', PolishesFactory);

  PolishesFactory.$inject = [
    '$http',
    '$resource',
    'Upload',
    '$q'
  ];

  function PolishesFactory ($http, $resource, Upload, $q) {
    var PolishesFactory = {};

      PolishesFactory.createWithAttachment = function(formData) {
        var deferred = $q.defer();
        sendPayload(formData, "POST", "polish.herokuapp.com/polishes").then(function(data) {
          deferred.resolve(data);
        });
        return deferred.promise;
      };
      function sendPayload(formData, method, url) {
        console.log(formData)
        var deferred = $q.defer();
        Upload.upload({
          url: url,
          method: method,
          fields: formData,
          file: formData.polish.picture,
          fileFormDataName: 'polish[picture]',
        })
        .then(function (resp) {
          deferred.resolve(resp.data);
        }, function (resp) {
          console.log('Error status: ' + resp.status);
        });
        return deferred.promise;
      }
    return PolishesFactory;
  }
})();