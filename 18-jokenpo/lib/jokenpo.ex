defmodule Jokenpo do
  def start do
    pid = spawn(__MODULE__, :loop, [HashDict.new])
    :global.register_name(:jokenpo, pid)
    pid
  end

  def server_id do
    :global.whereis_name(:jokenpo)
  end

  def play(jogada) do
    send(server_id, {:play, self(), jogada})
  end
  

  def loop(jogadas) do
    IO.puts("jogadas registradas #{Dict.size(jogadas)}")

    case Dict.keys(jogadas) do
      [pid1, pid2] -> 
        resultado = vencedor(jogadas[pid1], jogadas[pid2])
        send(pid1, "Ganhador foi #{resultado}")
        send(pid2, "Ganhador foi #{resultado}")
        jogadas = HashDict.new
      _ -> true
    end

    receive do
      {:play, sender_pid, jogada} -> 
        jogadas = Dict.put(jogadas, sender_pid, jogada)
        send(sender_pid, "Jogada registrada")
      _ -> IO.puts("Mensagem Invalida")
    end
    loop(jogadas)
  end

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
