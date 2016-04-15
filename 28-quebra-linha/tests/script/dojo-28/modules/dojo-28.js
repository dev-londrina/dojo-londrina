define(["exports", "modules/dojo-28"], function (exports, _modulesDojo28) {
	
	"use strict";

	var _interopRequire = function (obj) { 
		return obj && obj.__esModule ? obj["default"] : obj; 
	};

	var dojo28 = _interopRequire(_modulesDojo28);

	QUnit.module("Dojo 28 ES6 QUnit");

	QUnit.test("Está vazio", function (assert) {

		var expected = ['']; 
		var frase = '';
		var colunas = 20;
		//console.log(dojo28.montaColunas(frase, colunas));
		assert.deepEqual(dojo28.montaColunas(frase, colunas), expected);

	});

	QUnit.test("Uma palavra", function (assert) {

		var frase = 'palavra';
		var expected = [frase];
		var colunas = 20;
		//console.log(dojo28.montaColunas(frase, colunas));
		assert.deepEqual(dojo28.montaColunas(frase, colunas), expected);

	});
	QUnit.test("Duas palavras 7 colunas", function (assert) {

		var frase = 'Duas palavras';
		var expected = ['Duas', 'palavras'];
		var colunas = 7;

		assert.deepEqual(dojo28.montaColunas(frase, colunas), expected);
	});

	QUnit.test("Tres palavras 7 colunas", function (assert) {

		var frase = 'A nova palavra';
		var expected = ['A nova', 'palavra'];
		var colunas = 7;

		assert.deepEqual(dojo28.montaColunas(frase, colunas), expected);
	});

	QUnit.test("Palavra maior que colunas", function (assert) {

		var frase = 'Otorrinolaringologista';
		var expected = [frase];
		var colunas = 7;

		assert.deepEqual(dojo28.montaColunas(frase, colunas), expected);
	});

	QUnit.test("Test final", function (assert) {

		var frase = 'Um pequeno jabuti xereta viu dez cegonhas felizes.';
		var expected = ['Um pequeno jabuti', 'xereta viu dez', 'cegonhas felizes.'];
		var colunas = 20;

		assert.deepEqual(dojo28.montaColunas(frase, colunas), expected);
	});

});