(function(){
  'use strict';

  angular.module('myapp', ['ngRoute', 'ngResource', 'ngFileUpload', 'Devise'])
    .config(configFunction)
    .config(httpFunction);

  configFunction.$inject = ['$routeProvider', '$locationProvider'];
  httpFunction.$inject = ['$httpProvider'];

  function configFunction($routeProvider, $locationProvider) {
    $routeProvider
      .when('/login', {
        templateUrl: '/auth/_login.html',
        controller: 'authController'
      })
      .when('/logout', {
        controller: 'authController'
      })
      .when('/register', {
        templateUrl: 'auth/_register.html',
        controller: 'authController'
      });
    $locationProvider.html5Mode(false);
  }

  function httpFunction($httpProvider){
    $httpProvider.defaults.headers.common['X-CSRF-Token'] =
    $('meta[name=csrf-token]').attr('content');
  }

})();