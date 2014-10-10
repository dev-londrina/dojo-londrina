'use strict';

describe('Controller: MainCtrl', function () {

  // load the controller's module
  beforeEach(module('20ErdosApp'));

  var MainCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    MainCtrl = $controller('MainCtrl', {
      $scope: scope
    });
  }));

  it('deve receber uma lista com 2 autores', function () {
    scope.adicionarPublicacao(["P. Erdos", "A. Selberg."]);

    expect(scope.analise).toEqual({"P. Erdos": 0, "A. Selberg.": 1});
  });

  it('deve receber uma lista sem o Erdos e retornar infinito', function () {
    scope.adicionarPublicacao(["M. Souza", "A. Selberg", "A. Oliveira."]);

    expect(scope.analise).toEqual({"M. Souza": Infinity, "A. Selberg": Infinity, "A. Oliveira.": Infinity});
  });

  it('deve receber apenas o Erdos e retornar seu valor como zero', function () {
    scope.adicionarPublicacao(["P. Erdos"])

    expect(scope.analise).toEqual({"P. Erdos": 0});
  });

  it('Segundo caso de teste.', function () {
    scope.adicionarPublicacao(["Z. Silva", "P. Erdos"]);
    scope.adicionarPublicacao(["Z. Souza"]);

    expect(scope.analise).toEqual({"P. Erdos": 0,"Z. Silva": 1, "Z. Souza": Infinity});
  });

  it('Erdos na segunda linha.', function () {
    scope.adicionarPublicacao(["Z. Souza"]);
    scope.adicionarPublicacao(["Z. Souza", "Z. Silva", "P. Erdos"]);
    
    expect(scope.analise).toEqual({"P. Erdos": 0,"Z. Silva": 1, "Z. Souza": 1});
  });

  it('Erdos na segunda linha.', function () {
    scope.adicionarPublicacao(["Z. Souza", "Z. Silva", "P. Erdos"]);
    scope.adicionarPublicacao(["Z. Souza"]);
    
    expect(scope.analise).toEqual({"P. Erdos": 0,"Z. Silva": 1, "Z. Souza": 1});
  });

  it('3 linhas', function () {
    scope.adicionarPublicacao("P. Erdos, A. Selberg".split(", "));
    scope.adicionarPublicacao("P. Erdos, J. Silva, M. Souza".split(", "));
    scope.adicionarPublicacao("M. Souza, A. Selberg, A. Oliveira".split(", "));

    expect(scope.analise).toEqual({"P. Erdos": 0,
      "A. Selberg": 1,
      "J. Silva": 1,
      "M. Souza": 1,
      "A. Oliveira": 2});

  });

  it('5 linhas', function () {
    scope.adicionarPublicacao("P. Erdos, A. Selberg".split(", "));
    scope.adicionarPublicacao("P. Erdos, J. Silva, M. Souza".split(", "));
    scope.adicionarPublicacao("M. Souza, A. Selberg, A. Oliveira".split(", "));
    scope.adicionarPublicacao("J. Ninguem, M. Ninguem".split(", "));
    scope.adicionarPublicacao("P. Duarte, A. Oliveira".split(", "));

    expect(scope.analise).toEqual({"P. Erdos": 0,
      "A. Selberg": 1,
      "J. Silva": 1,
      "M. Souza": 1,
      "A. Oliveira": 2,
      "P. Duarte": 3,
      "J. Ninguem": Infinity,
      "M. Ninguem": Infinity
    });

  });


});
