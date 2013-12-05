class Poker
  SEQUENCIA = ["uma dupla", "duas duplas", "trinca"]

  def vencedor
    jogada1 = SEQUENCIA.index(@maos[0].jogada)
    jogada2 = SEQUENCIA.index(@maos[1].jogada)
    if jogada1 > jogada2
      "1"
    elsif jogada2 > jogada1
      "2"
    else
      "empate"
    end
  end

  def carregar_cartas(numero_do_jogador, cartas)
    @maos ||= []
    @maos << Mao.new.carregar_cartas(cartas)
  end
end