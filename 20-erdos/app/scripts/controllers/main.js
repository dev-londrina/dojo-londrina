'use strict';

angular.module('20ErdosApp')
  .controller('MainCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    $scope.analise = {};

    $scope.adicionarPublicacao = function (autores) {
      var adicionouErdos = autores.indexOf("P. Erdos") >= 0;
      var menorErdos = Infinity;
      for (var i = 0; i < autores.length; i++) {
        var autor = autores[i];
        if ($scope.analise[autor] < menorErdos){
          menorErdos = $scope.analise[autor];
        }
      }
      for (var i = 0; i < autores.length; i++) {
        var autor = autores[i];
        if (/Erdos/.test(autor)) {
          $scope.analise[autor] = 0;
        } else if (adicionouErdos) {
          $scope.analise[autor] = 1;
        } else if (!$scope.analise.hasOwnProperty(autor)) {
          $scope.analise[autor] = menorErdos + 1;
        }
      }
    };
  });
