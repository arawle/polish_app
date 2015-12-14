(function(){
  'use strict';

  angular.module('myapp', ['ngRoute', 'ngResource', 'ngFileUpload', 'Devise'])
    .config(configFunction)
    .config(httpFunction);

  configFunction.$inject = ['$routeProvider', '$locationProvider'];
  httpFunction.$inject = ['$httpProvider'];

  function configFunction($routeProvider, $locationProvider) {
    $routeProvider
      .when('/polishes', {
        templateUrl: 'polishes/index.html',
        controller: 'polishesController'
      })
      .when('/polishes/:id', {
        templateUrl: 'polishes/polish.html',
        controller: 'polishController'
      });
    $locationProvider.html5Mode(false);
  }

  function httpFunction($httpProvider){
    $httpProvider.defaults.headers.common['X-CSRF-Token'] =
    $('meta[name=csrf-token]').attr('content');
  }

})();
