# language: pt
Funcionalidade: Mão
  Essa classe recebe um conjunto de 5 cartas e retorna o jogo
  De acordo com as regras do poker

  Cenário: Carta maior sendo a Dama
    Dado uma mão com as cartas "2C 5C 7D 8S QH"
    Então a carta maior sera "QH"

  Cenário: Carta maior sendo o Rei
    Dado uma mão com as cartas "5H 5C 6S 7S KD"
    Então a carta maior sera "KD"

  Cenário: Carta maior sendo o Ás
    Dado uma mão com as cartas "5H AD 5C 6S 7S"
    Então a carta maior sera "AD"

  Cenário: Duas damas com naipes diferentes
    Dado uma mão com as cartas "2C 5C 7D QC QH"
    Então a carta maior sera "QC"

  Cenário: Mao com uma dupla
    Dado uma mão com as cartas "2C 5C 7D QC QH"
    Então a jogada sera "uma dupla"

  Cenário: Mao com duas duplas
    Dado uma mão com as cartas "2C 5C 2D QC QH"
    Então a jogada sera "duas duplas"

  Cenário: Mao com trinca
    Dado uma mão com as cartas "2C 5C 2D QC 2H"
    Então a jogada sera "trinca"
