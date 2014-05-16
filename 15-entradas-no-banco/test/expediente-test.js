var assert = require("assert");
var expediente = require("../expediente");

describe('expediente', function(){
  it('deve retornar 1', function(){
    var filepath = __dirname + '/log/teste1.txt';
    
    assert.strictEqual(1, expediente(filepath));
  });

  it('deve retornar 3', function(){
    var filepath = __dirname + '/log/teste2.txt';
    
    assert.strictEqual(3, expediente(filepath));
  });
  
  it('deve retornar 2', function(){
    var filepath = __dirname + '/log/teste3.txt';
    
    assert.strictEqual(2, expediente(filepath));
  });
  
  it('deve retornar 1 - com Porta Fechada OK', function(){
    var filepath = __dirname + '/log/teste4.txt';
    assert.strictEqual(1, expediente(filepath));
  });
  
  it('deve retornar 2 - com formatos inválidos', function(){
    var filepath = __dirname + '/log/teste5_formato_invalido.txt';
    assert.strictEqual(2, expediente(filepath));
  });
});