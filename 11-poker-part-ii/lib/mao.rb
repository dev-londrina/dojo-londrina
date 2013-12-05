class Mao
  NUMEROS_CARTAS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  NAIPES = ["D", "H", "S", "C"]

  def carregar_cartas(cartas)
    @cartas = cartas.split
    self
  end

  def carta_maior
    @cartas.sort_by do |carta|
      forca_do_numero = (NUMEROS_CARTAS.index(carta[0]) + 1) * 10
      forca_do_naipe = NAIPES.index(carta[1])

      forca_do_numero + forca_do_naipe
    end.last
  end

  def jogada
    duplas = 0
    trincas = 0

    grupo_de_cartas.each do |key, cards|
      duplas += 1 if cards.size == 2
      trincas += 1 if cards.size == 3
    end

    transforma_cartas_em_texto(duplas, trincas)
  end

  private

  def grupo_de_cartas
    @cartas.group_by {|carta| carta[0]}
  end

  def transforma_cartas_em_texto(duplas, trincas)
    return "trinca" if trincas == 1
    return "uma dupla" if duplas == 1
    return "duas duplas" if duplas == 2
  end
end