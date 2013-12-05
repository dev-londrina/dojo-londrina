class Mao
  NUMEROS_CARTAS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  NAIPES = ["D", "H", "S", "C"]

  def carregar_cartas(cartas)
    @cartas = cartas.split
  end

  def carta_maior
    @cartas.sort_by do |carta|
      forca_do_numero = (NUMEROS_CARTAS.index(carta[0]) + 1) * 10
      forca_do_naipe = NAIPES.index(carta[1])

      forca_do_numero + forca_do_naipe
    end.last
  end

  def jogada
    if(grupo_de_cartas.keys.size == 4)
      "uma dupla"
    elsif (grupo_de_cartas.keys.size == 3)
      maior_grupo = 0
      grupo_de_cartas.each do |key, value|
        maior_grupo = value.size if value.size > maior_grupo
      end
      if maior_grupo == 2
        "duas duplas"
      else
        "trinca"
      end
    end
  end

  private
  def grupo_de_cartas
    @cartas.group_by{ |carta| carta[0] }
  end
end