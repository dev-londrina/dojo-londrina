class Mao
  NUMEROS_CARTAS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  
  def carregar_cartas(jogada)
    @jogada = jogada.split
  end
  
  def carta_maior
    @jogada.sort_by do |carta|
      NUMEROS_CARTAS.index(carta[0])
    end.last
  end
end