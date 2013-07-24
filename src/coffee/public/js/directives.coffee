# Directives

angular
  .module('myApp')
  .directive('appVersion', ['version', (version)->
      (scope, elm, attrs)->
        elm.text(version)
    ])
