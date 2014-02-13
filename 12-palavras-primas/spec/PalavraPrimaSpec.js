describe("PalavraPrima", function() {
  var palavraPrima;

  beforeEach(function() {
    palavraPrima = new PalavraPrima();
  });
  
  describe("ehPrima", function(){
    it("'a' deve ser prima", function() {
      expect(palavraPrima.ehPrima("a")).toBeTruthy();
    });
  
    it("'b' deve ser prima", function() {
      expect(palavraPrima.ehPrima("b")).toBeTruthy();
    });
  
    it("'d' não deve ser prima", function() {
      expect(palavraPrima.ehPrima("d")).toBeFalsy();
    });
    
    it("'bc' deve ser prima", function() {
      expect(palavraPrima.ehPrima("bc")).toBeTruthy();
    });

    it("'bd' nao deve ser prima", function() {
      expect(palavraPrima.ehPrima("bd")).toBeFalsy();
    });
  });
  
  describe("convertePalavraEmNumero", function(){
    it("Convertendo 'a' para numero o resultado deve ser 1", function() {
      expect(palavraPrima.convertePalavraEmNumero("a")).toEqual(1);
    });
    it("Convertendo 'b' para numero o resultado deve ser 2", function() {
      expect(palavraPrima.convertePalavraEmNumero("b")).toEqual(2);
    });
    it("Convertendo 'ab' para numero o resultado deve ser 3", function() {
      expect(palavraPrima.convertePalavraEmNumero("ab")).toEqual(3);
    });
    
    it("Convertendo 'A' para numero o resultado deve ser 27", function() {
      expect(palavraPrima.convertePalavraEmNumero("A")).toEqual(27);
    });
  });  
    
});

describe("Numero", function() {
  var numero;
  
  beforeEach(function() {
    numero = new Numero();
  });
  
  it("1 deve ser primo", function() {
    expect(numero.ehPrimo(1)).toBeTruthy();
  });
  
  it("4 nao deve ser primo", function() {
    expect(numero.ehPrimo(4)).toBeFalsy();
  });

  it("5 deve ser primo", function() {
    expect(numero.ehPrimo(5)).toBeTruthy();
  });
  
  it("0 nao deve ser primo", function() {
    expect(numero.ehPrimo(0)).toBeFalsy();
  });

  it("9 nao deve ser primo", function() {
    expect(numero.ehPrimo(9)).toBeFalsy();
  });
  
});