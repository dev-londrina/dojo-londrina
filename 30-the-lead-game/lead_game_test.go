package main

import "testing"

func Test1Jogada(t *testing.T) {
	tlg := createTLG(1)
	tlg.addRound(10, 5)
	if tlg.getWinner() != 1 {
		t.Error("Vencedor incorreto")
	}

	if tlg.getLead() != 5 {
		t.Error("Diferença errada")
	}
}

func TestTLGConstructor(t *testing.T) {
	tlg := createTLG(0)
	if tlg.getWinner() != 0 {
		t.Error("Nao deve ter vencedor")
	}
	if tlg.getLead() != 0 {
		t.Error("Nao deve ter lead")
	}
}

func Test1JogadaVencedor2(t *testing.T) {
	tlg := createTLG(1)
	tlg.addRound(5, 15)
	if tlg.getWinner() != 2 {
		t.Error("Vencedor incorreto")
	}

	if tlg.getLead() != 10 {
		t.Error("Diferença errada")
	}
}

func Test2JogadasVencedor1(t *testing.T) {
	tlg := createTLG(2)
	tlg.addRound(5, 15)
	tlg.addRound(30, 1)
	if tlg.getWinner() != 1 {
		t.Error("Vencedor incorreto")
	}

	if tlg.getLead() != 19 {
		t.Error("Diferença errada")
	}
}

func Test5JogadasVencedor1(t *testing.T) {
	tlg := createTLG(5)
	tlg.addRound(140, 82)
	tlg.addRound(89, 134)
	tlg.addRound(90, 110)
	tlg.addRound(112, 106)
	tlg.addRound(88, 90)
	if tlg.getWinner() != 1 {
		t.Error("Vencedor incorreto")
	}

	if tlg.getLead() != 58 {
		t.Error("Diferença errada")
	}
}
