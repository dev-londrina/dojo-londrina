defmodule Jokenpo do
  def vencedor(jogador1, jogador2) do
    if Enum.all?([jogador1, jogador2], &valida/1) do
      case vencedor({jogador1, jogador2}) do
        :empate -> vencedor({jogador2, jogador1})
        resultado -> resultado
      end
    else
      :invalido
    end
  end

  defp vencedor(jogadores) do
    case jogadores do
      {:tesoura, :papel} -> :tesoura
      {:papel, :pedra} -> :papel
      {:pedra, :tesoura} -> :pedra
      _ -> :empate
    end
  end

  def valida(:pedra), do: true
  def valida(:tesoura), do: true
  def valida(:papel), do: true
  def valida(_), do: false
end
