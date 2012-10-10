class Jokenpo
  
  def analize(jogador_1, jogador_2)
    regra = {'tesoura' => 'papel',
             'pedra' => 'tesoura',
             'papel' => 'pedra'}
             
    if jogador_1 == jogador_2
      "empatou"
    elsif regra[jogador_1] == jogador_2
      "jogador 1 venceu"
    else
      "jogador 2 venceu"
    end
  end
end