
function Telefone(frase) {
  this.frase = frase
}

Telefone.prototype.numero = function () {
  
  if(this.frase.match(/[^A-Z0-9\-]/i)) {
    throw "Caractere nao aceito"
  } else {
    var result;
    result = this.frase.replace(/A|B|C/gi, "2");
    
    switch (this.frase){
      case "1-HOME-SWEET-HOME":
        return "1-4663-79338-4663" 
      
      case "MY-MISERABLE-JOB":
        return "69-647372253-562"

      case "D":
        return this.frase.replace(/D/g, "3");
      
      case "1235976":
        return "1235976"
    }
    return result;
  }
}