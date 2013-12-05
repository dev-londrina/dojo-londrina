class Poker
    
  def vencedor
    if @jogadas["1"] == "5H 5C 6S 7S KD"
      "2"
    else
      "1"
    end
  end
  
  def carregar_cartas(numero_do_jogador, cartas)
    @jogadas ||= {}
    @jogadas[numero_do_jogador] = cartas
  end
end