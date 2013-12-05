# language: pt
Funcionalidade: Poker
  Esse sistema deve comparar 2 conjuntos de 5 cartas
  E retornar o vencedor
  De acordo com as regras do Poker

  Cenário: Par contra par com vencedor jogador 2
    Dado que o jogador 1 tem as cartas "5H 5C 6S 7S KD"
    E que o jogador 2 tem as cartas "2C 3S 8S 8D TD"
    Então o vencedor deve ser o jogador 2

  Cenário: Par contra par com vencedor jogador 1
    Dado que o jogador 1 tem as cartas "2C 3S 8S 8D TD"
    E que o jogador 2 tem as cartas "5H 5C 6S 7S KD"
    Então o vencedor deve ser o jogador 1

  Cenário: Empate entre 2 cartas vence jogador 1
    Dado que o jogador 1 tem as cartas "2C 3S 8S 8D KC"
    E que o jogador 2 tem as cartas "5H 5C 6S 7S KD"
    Então o vencedor deve ser o jogador 1

  # Cenário: A maior carta entre duas jogadas
  #   Dado que as cartas