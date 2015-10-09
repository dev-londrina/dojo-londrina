package main

import (
	"fmt"
)

type TLG struct {
	vencedor, lead, sum1, sum2 int
}

func main() {
	var rounds int
	fmt.Scanf("%d", &rounds)

	tlg := createTLG(rounds)
	for i := 0; i < rounds; i++ {
		var pontuacaojogador1, pontuacaojogador2 int
		fmt.Scanf("%d %d", &pontuacaojogador1, &pontuacaojogador2)
		tlg.addRound(pontuacaojogador1, pontuacaojogador2)
	}

	fmt.Printf("%d %d\n", tlg.getWinner(), tlg.getLead())
}

func (t *TLG) addRound(pontuacaojogador1, pontuacaojogador2 int) {
	t.sum1 += pontuacaojogador1
	t.sum2 += pontuacaojogador2
	roundWinner := t.sum1 - t.sum2
	vencedor := 1
	if roundWinner <= 0 {
		roundWinner *= -1
		vencedor = 2
	}
	if roundWinner > t.lead {
		t.vencedor = vencedor
		t.lead = roundWinner
	}
}

func (t *TLG) getWinner() int {
	return t.vencedor
}

func (t *TLG) getLead() int {
	return t.lead
}

func createTLG(n_rounds int) TLG {
	return TLG{0, 0, 0, 0}
}
