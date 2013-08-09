
/*
 * GET home page.
 */

exports.index = function(req, res){
  res.render('index', { title: 'Express' });
};

exports.quebra = function (req, res) {
  res.send(req.query.texto);
};

exports.quebraPost = function (req, res) {
  console.log(req);
  var frase = req.body.texto;
  var colunas = req.body.col;
  
  var palavras = frase.split(" ");
  var npalavras = palavras.length;
  var linha1 = []
    , linha2 = []
    , temp_linha1 = ""
    , linhas = []
    , posicao = 0;
  
  for (i=0; i<npalavras; i++){
    
    temp_linha1 = linhas[posicao] +" "+ palavras[i];
    
    //if (linhas[posicao].length < colunas){
    if (temp_linha1.length < colunas){
      linhas[posicao] = (linhas[posicao].length > 0) ? linhas[posicao] +" "+ palavras[i] : linhas[posicao] = palavras[i];
    } else {
      posicao++;
      linhas[posicao] = palavras[i];
    }
    
    if (linha2.length > 0){
      frase = linha1.join(" ") + "\n" + linha2.join(" ");
    } else {
      frase = linha1.join(" ");
    }
  }
  
  res.send(frase);
};