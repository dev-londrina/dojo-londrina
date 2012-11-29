# encoding: utf-8
class Caixa
  NOTAS = [100, 50, 20, 10]
  
  def initialize(notas_disponiveis={100=>1000, 50=>1000, 20=>1000, 10=>1000})
    @notas_disponiveis = notas_disponiveis
  end
  
  def saque(valor)
    grana_maxima = 0
    
    @notas_disponiveis.each do |valor,quantidade|
      grana_maxima += valor * quantidade
    end
    
    return "valor inválido" if valor % 10 != 0
    return "saque deve ser maior que zero" if valor == 0
    return "Numero de notas insuficientes" if valor > grana_maxima
      
    NOTAS.collect do |nota|
      if @notas_disponiveis[nota] > 0
        x = [nota] * (valor / nota)
        valor %= nota
        x
      end
    end.flatten.compact
  end
end