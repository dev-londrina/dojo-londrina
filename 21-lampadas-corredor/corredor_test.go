package main

import "testing"

func TestCorredorEscuro(t *testing.T) {
	r := acendeLuzes(0)
	if len(r) != 0 {
		t.Error("Não deveríamos ter luzes.")
	}
}

func TestTamanhoCorredorUmaLampada(t *testing.T) {
	r := []string{}
	r = acendeLuzes(1)
	if len(r) != 1 {
		t.Error("Deveriamos ter uma lampada.")
	}
}

func TestTamanhoCorredorTresLampadas(t *testing.T) {
	r := []string{}
	r = acendeLuzes(3)
	if len(r) != 3 {
		t.Error("Deveriamos ter 3 lampadas.")
	}
}

func TestCorredorUmaLampada(t *testing.T) {
	r := acendeLuzes(1)
	if r[0] != "on" {
		t.Error("Deveriamos ter [on].")
	}
}

func TestCorredorDuasLampada(t *testing.T) {
	r := acendeLuzes(2)
	if !comparaArray([]string{"on", "off"}, r) {
		t.Error("Deveriamos ter [on] [off].")
	}
}

func TestCorredorTresLampada(t *testing.T) {
	r := acendeLuzes(3)

	if !comparaArray([]string{"on", "off", "off"}, r) {
		t.Error("Deveriamos ter [on] [off] [off]")
	}
}

func TestCorredorQuatroLampada(t *testing.T) {
	r := acendeLuzes(4)

	if !comparaArray([]string{"on", "off", "off", "on"}, r) {
		t.Error("Deveriamos ter [on] [off] [off] [on]")
	}
}
