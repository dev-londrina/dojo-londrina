defmodule JokenpoTest do
  use ExUnit.Case

  test "pedra empata com pedra" do
    assert Jokenpo.vencedor(:pedra, :pedra) == :empate
  end

  test "pedra ganha de tesoura" do
    assert Jokenpo.vencedor(:pedra, :tesoura) == :pedra
  end

  test "tesoura perde de pedra" do
    assert Jokenpo.vencedor(:tesoura, :pedra) == :pedra
  end

  test "papel ganha de pedra" do
    assert Jokenpo.vencedor(:papel, :pedra) == :papel
  end

  test "tesoura ganha de papel" do
    assert Jokenpo.vencedor(:tesoura, :papel) == :tesoura
  end

  test "papel perde de tesoura" do
    assert Jokenpo.vencedor(:papel, :tesoura) == :tesoura
  end

  test "pedra perde de papel" do
    assert Jokenpo.vencedor(:pedra, :papel) == :papel
  end

  test "batatas são inválidas" do
    assert Jokenpo.vencedor(:batata, :pedra) == :invalido
  end

  test "batatas são inválidas detonando" do
    assert Jokenpo.vencedor(:pedra, :batata) == :invalido
  end

  test "cebolas são inválidas empatando" do
    assert Jokenpo.vencedor(:cebola, :cebola) == :invalido
  end

  test "cebolas são inválidas no valida" do
    assert Jokenpo.valida(:cebola) == false
  end

end
