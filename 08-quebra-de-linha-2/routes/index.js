
/*
 * GET home page.
 */

exports.index = function(req, res){
  res.render('index', { title: 'Express' });
};

exports.quebra = function (req, res) {
  numeroDeCaracteresNaLinhas = req.body.cols;
  var textoCompleto = req.body.texto;
  var textoParcial = [];
  var textoFinal = "";
  
  if (textoCompleto){
    var palavras = textoCompleto.split(" ");
    for (var i=0;i<palavras.length;i++) {
      
      textoParcial.push(palavras[i]);
      
      if (textoParcial.join(" ").length === numeroDeCaracteresNaLinhas ){
        textoFinal += textoParcial.join(" ") + "\n";
        textoParcial = [];
        
      } else if (palavras.length - 1  === i){
        textoFinal += textoParcial.join(" ");
        
      } else if (textoParcial.join(" ").length > numeroDeCaracteresNaLinhas){
        var auxiliar = textoParcial.pop();
        textoFinal += textoParcial.join(" ") + "\n";
        
        textoParcial = [auxiliar];
      }
      
    }
  }

  res.send(retornaTextoSemUltimaQuebra(textoFinal));
};

function retornaTextoSemUltimaQuebra(texto) {
  var textoSemQuebra = texto;
  if (texto[texto.length-1] === "\n"){
    textoSemQuebra = texto.substring(0, texto.length-1);
  }
  return textoSemQuebra;
}