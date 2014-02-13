function PalavraPrima(){};

PalavraPrima.prototype.ehPrima = function (palavra) {
  var palavraEmNumero = new PalavraPrima();
  var palavraConvertida = palavraEmNumero.convertePalavraEmNumero(palavra);
  
  return new Numero().ehPrimo(palavraConvertida);
  //return PalavraPrima != "d";
};

PalavraPrima.prototype.convertePalavraEmNumero = function (palavra) {
  var soma = 0;
  var minusculas = palavra.match(/[a-z]/g);
  var maiusculas = palavra.match(/[A-Z]/g);
  
  if (minusculas != null) {
    for (var i = 0; i < minusculas.length; i++) {
      soma += minusculas[i].charCodeAt() - 96;
    }
  }
  
  if (maiusculas != null) {
    for (var i = 0; i < maiusculas.length; i++) {
      soma += maiusculas[i].charCodeAt() - 38;
    }
  }
  return soma;
};


function Numero(){};

Numero.prototype.ehPrimo = function (numero) {
  if (numero == 0) return false;
  if (numero <= 2) return true;
  if (numero % 2 == 0) return false;
  //for(i=2; i <= numero-1; i++) {
  for(var i = 3; i <= numero - 1; i += 2) {
    if (numero % i == 0) {
      return false;
    }
  }
  return true;
};