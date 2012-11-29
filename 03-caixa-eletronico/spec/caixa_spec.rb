# encoding: utf-8
require "rspec"
require "caixa"

describe Caixa do
  
  let(:caixa){ Caixa.new }
  
  it "sacando $30 deve retornar $20 e $10" do
    caixa.saque(30).should == [20, 10]
  end
  
  it "sacando $80 deve retornar $50, $20 e $10" do
    caixa.saque(80).should == [50, 20, 10]
  end
  
  it "sacando $10 deve retornar $10" do
    caixa.saque(10).should == [10]
  end
  
  it "sacando $120 deve retornar $100 $20" do
    caixa.saque(120).should == [100,20]
  end
  
  it "sacando $0 deve retornar erro" do
    caixa.saque(0).should == "saque deve ser maior que zero"
  end 
  
  it "sacando 3 deve retornar erro" do 
    caixa.saque(3).should == "valor inválido"
  end
  
  it "sacando 17 deve retornar erro" do 
    caixa.saque(17).should == "valor inválido"
  end
  
  it "sacando 180 deve retornar erro" do 
    caixa.saque(180).should == [100, 50, 20, 10]
  end
  
  it "sacando 110 deve retornar erro" do 
    caixa.saque(110).should == [100, 10]
  end
  
  context "com apenas uma nota de 100 no caixa" do
    let(:caixa){ Caixa.new({100 => 1}) }
    
    it "sacando 200 deve dar erro" do
      caixa.saque(200).should == "Numero de notas insuficientes"
    end
  end
  
  context "com quatro notas de 50 no caixa" do
    let(:caixa){ Caixa.new({100 => 0, 50 => 4, 20 => 0, 10 => 0}) }
    
    it "sacando 100 deve retornar 50 e 50" do
      caixa.saque(100).should == [50, 50]
    end
  end
end
