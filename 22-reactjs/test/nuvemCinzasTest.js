'use strict';

casper.on('remote.message', function(message) {
  this.echo('Log: '+ message, 'LOG');
});

casper.on('page.error', function(msg, trace) {
  this.echo('Error: ' + msg, 'ERROR');
});

casper.test.begin('Aplicativo iniciou corretamente', function suite(test) {
  casper.start('http://localhost:8000/', function() {
    test.assertExists('#mapa', 'Mapa precisa existir');
  }).then(function () {
    test.assertExists('div[data-col]', 'Contem uma coluna')
  }).then(function () {
    test.assertExists('div[data-row]', 'Contem uma linha')
  }).then(function () {
    test.assertElementCount('div[data-col][data-row]', 4, 'Número de elementos inesperado')
  }).then(function () {
    test.assertElementCount('div[data-col="0"][data-row="0"]', 1, 'Deve existir o primeiro elemento da matriz')
  }).then(function () {
    test.assertElementCount('div[data-col="0"][data-row="1"]', 1, 'Deve existir o elemento [0, 1]')
  }).then(function () {
    test.assertSelectorHasText('div[data-col="0"][data-row="0"]', ".", 'Deve existir uma posição no mapa')
  }).then(function () {
    test.assertSelectorHasText('div[data-col="1"][data-row="1"]', "*", 'Deve existir uma nuvem no mapa')
  }).then(function () {
    test.assertSelectorHasText('div[data-row="0"][data-col="1"]', "A", 'Deve existir um aeroporto no mapa')
  }).then(function () {
    test.assertExists('#proximoDia', 'Contem um botao');
    this.click('#proximoDia');
    test.assertSelectorHasText('div[data-row="1"][data-col="1"]', "*", 'Deve existir uma nuvem no mapa')
    test.assertSelectorHasText('div[data-row="0"][data-col="1"]', "*", 'Deve existir uma nuvem no mapa')
    test.assertSelectorHasText('div[data-row="1"][data-col="0"]', "*", 'Deve existir uma nuvem no mapa')
  });

  casper.run(function() {
    test.done();
  });
});