var request = require('superagent'); 
var expect = require('expect.js');

describe('Quebra de Linha', function(){ 
  it("rota existe", function(done){ 
    request.post('localhost:3000/quebra').end(function(res){ 
      expect(res).to.exist; 
      expect(res.status).to.equal(200);
      done();
    });
  });
  
  it("um caracter", function(done){ 
    request.post('localhost:3000/quebra').send({texto:"a", cols:10}).end(function(res){ 
      expect(res.text).to.equal("a");
      done();
    });
  });
  
  it("deve quebrar em 2 linhas", function(done){ 
    request.post('localhost:3000/quebra').send({texto:"a b", cols:1}).end(function(res){ 
      expect(res.text).to.equal("a\nb");
      done();
    });
  });
  
  it("não deve quebrar linha com 2 palavras", function(done){ 
    request.post('localhost:3000/quebra').send({texto:"corinthians campeao", cols:50}).end(function(res){ 
      expect(res.text).to.equal("corinthians campeao");
      done();
    });
  });
  
  it("deve quebrar linha com 3 palavras", function(done){ 
    request.post('localhost:3000/quebra').send({texto:"lua mar soletrando", cols:7}).end(function(res){ 
      expect(res.text).to.equal("lua mar\nsoletrando");
      done();
    });
  });
  
  it("deve quebrar em 3 linhas", function(done){ 
    request.post('localhost:3000/quebra').send({texto:"Um pequeno jabuti xereta viu dez cegonhas felizes.", cols:20}).end(function(res){ 
      expect(res.text).to.equal("Um pequeno jabuti\nxereta viu dez\ncegonhas felizes.");
      done();
    });
  });
  
});