(function(){
  'use strict';

  angular
    .module('myapp')
    .factory('UserFactory', UserFactory);

  UserFactory.$inject = [
    '$http',
    '$resource',
    'Upload',
    '$q'
  ];

  function UserFactory ($http, $resource, Upload, $q) {
    var UserFactory = {};
    UserFactory.collection = [];

    UserFactory.getCollection = function(id){
      var collection = '/users/' + id
      UserFactory.collection = [];
      $http.get(collection)
        .success(function(data){
        UserFactory.collection.push(data);
      })
      .error(function(data){
        console.log('Error: ' + data);
      });
      return UserFactory.collection;
    };

  return UserFactory;
  }
})();