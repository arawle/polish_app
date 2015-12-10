(function(){
  'use strict';

  angular.module('myapp', ['ngRoute', 'ngResource', 'ngFileUpload'])
    .config(configFunction)
    .config(httpFunction);

  configFunction.$inject = ['$routeProvider', '$locationProvider'];
  httpFunction.$inject = ['$httpProvider'];

  function configFunction($routeProvider, $locationProvider) {
    $routeProvider
      .when('/users', {
        templateUrl: 'users/index.html',
        controller: 'usersController'
      })
      .when('/users/:id', {
        templateUrl: 'users/user.html',
        controller: 'userController'
      });
    $locationProvider.html5Mode(false);
  }

  function httpFunction($httpProvider){
    $httpProvider.defaults.headers.common['X-CSRF-Token'] =
    $('meta[name=csrf-token]').attr('content');
  }

})();
