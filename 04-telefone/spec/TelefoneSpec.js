describe("Telefone", function() {

  beforeEach(function() {
    var telefone = new Telefone();
  });

  it("deve retornar o numero de telefone", function() {
    var telefone = new Telefone("1-HOME-SWEET-HOME");
    expect(telefone.numero()).toEqual("1-4663-79338-4663");
  });
  
  it("deve converter o a frase MY-MISERABLE-JOB", function() {
    var telefone = new Telefone("MY-MISERABLE-JOB");
    expect(telefone.numero()).toEqual("69-647372253-562")
  })
  
  it("deve converter a letra A para 2", function() {
    var telefone = new Telefone("A");
    expect(telefone.numero()).toEqual("2")
  })
  
  it("deve converter as letras AA para 22", function() {
    var telefone = new Telefone("AA");
    expect(telefone.numero()).toEqual("22")
  })
  
  it("deve converter as letras ABC para 222", function() {
    var telefone = new Telefone("ABC");
    expect(telefone.numero()).toEqual("222")
  })
    
  it("deve converter a letra D para 3", function() {
    var telefone = new Telefone("D");
    expect(telefone.numero()).toEqual("3")
  })
  it("nao deve aceitar #", function() {
    var telefone = new Telefone("#");
    expect(function(){
      telefone.numero();
    }).toThrow("Caractere nao aceito");
    
  })
  
  it("nao deve aceitar caracteres diferentes", function(){
    var telefone = new Telefone("/");
    expect(function(){
      telefone.numero();
    }).toThrow("Caractere nao aceito")
  })
  it("nao deve aceitar caracteres diferentes", function(){
    var telefone = new Telefone("$");
    expect(function(){
      telefone.numero();
    }).toThrow("Caractere nao aceito")
  })
  
  it("deve retornar um numero", function() {
    var telefone = new Telefone("1235976")
    expect(telefone.numero()).toEqual("1235976")
  })
  
  it("nao deve aceitar caracteres diferentes", function(){
    var telefone = new Telefone("A$");
    expect(function(){
      telefone.numero();
    }).toThrow("Caractere nao aceito")
  })
});