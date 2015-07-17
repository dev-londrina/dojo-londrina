define(["exports", "module"], function (exports, module) {
	
	"use strict";

	var dojo28 = {
		montaColunas: function (texto, colunas) {
			var array_de_palavras = texto.split(' '),
				array_de_resultado = [],
				linha = null;
			for (var i = 0, s = array_de_palavras.length; i < s; i++) {
				var palavra = array_de_palavras[i];
				if (linha === null) {
					linha = palavra;
				} else if ((palavra.length + 1 + linha.length) > colunas) {
					array_de_resultado.push(linha);
					linha = palavra;
				} else {
					linha = linha + ' ' + palavra;
				}
			}
			if (linha !== null) {
				array_de_resultado.push(linha);
			}
			return array_de_resultado;
		}
	};

	module.exports = dojo28;
	
});