app.directive('stringToNumber', function() {
  return {
    priority: 1,
    restrict: 'A',
    require: 'ngModel',
    link: function(scope, element, attr, ngModel) {
      function toModel(value) {
        return "" + value;
      }

      function toView(value) {
        return parseInt(value);
      }
      ngModel.$formatters.push(toView);
      ngModel.$parsers.push(toModel);
    }
  };
});