var request = require('superagent'); 
var expect = require('expect.js');

describe('Quebra de Linha', function(){ 
  it("rota existe", function(done){ 
    request.get('localhost:3001/quebra').end(function(res){ 
      expect(res).to.exist; 
      expect(res.status).to.equal(200);
      done();
    });
  });
  
  it("Retorna texto", function(done) {
    request.get('localhost:3001/quebra?col=20&texto=Quebra%20de%20linha').end(function(res){
      expect(res.text).to.equal('Quebra de linha');
      done();
    });
  });
  
  it("Retorna texto enviado como parametro", function(done) {
    request.get('localhost:3001/quebra?col=20&texto=Agora%20muda%20o%20texto').end(function(res){
      expect(res.text).to.equal('Agora muda o texto');
      done();
    });
  });
  
  it("Retorna texto enviado como parametro", function(done) {
    request.post('localhost:3001/quebra').send({col:20, texto: 'Agora muda o texto'}).end(function(res){
      expect(res.text).to.equal('Agora muda o texto');
      done();
    });
  });
  
  it("Retorna texto quebrado", function(done) {
    request.post('localhost:3001/quebra').send({col:10, texto: 'Agora muda o texto'}).end(function(res){
      expect(res.text).to.equal('Agora muda\no texto');
      done();
    });
  });
  
  it("Retorna texto quebrado sem quebrar palavra", function(done) {
    request.post('localhost:3001/quebra').send({col:10, texto: 'Agora mudamos'}).end(function(res){
      expect(res.text).to.equal('Agora\nmudamos');
      done();
    });
  });
  
  it("Retorna texto quebrado com 3 linhas", function(done) {
    request.post('localhost:3001/quebra').send({col:10, texto: 'Agora mudamos venha ja'}).end(function(res){
      expect(res.text).to.equal('Agora\nmudamos\nvenha ja');
      done();
    });
  });
});