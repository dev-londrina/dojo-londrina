var fs = require('fs');
var VALIDO_REGEXP = /\[\d{4}-\d{2}-\d{2}\s(\d{2}):(\d{2}):(\d{2})\] - Abertura da Porta OK$/i;

module.exports = function(filepath) {
  var log = fs.readFileSync(filepath, {encoding: 'utf8'}),
      linhas = log.split('\n'),
      linhas_validas = 0,
      match;
  
  for (var i = 0; i < linhas.length; i++) {
    match = linhas[i].match(VALIDO_REGEXP);
    if (match && parseInt(match[1], 10) >= 10 && parseInt(match[1], 10) < 16) {
      linhas_validas++;
    }
  }
  return linhas_validas;
};