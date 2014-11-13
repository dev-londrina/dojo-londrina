package main

import (
	"fmt"
)

func main() {
	fmt.Println(acendeLuzes(8))
}

func acendeLuzes(entradas int) []string {
	r := []string{}

	for i := 0; i < entradas; i++ {
		r = append(r, "on")
	}

	for i := 1; i < entradas; i++ {
		for j := 0; j < len(r); j++ {
			if (j+1)%(i+1) == 0 {
				r[j] = apertarInterruptor(r[j])
			}
		}
	}
	return r
}

func apertarInterruptor(valor string) string {
	if valor == "on" {
		return "off"
	}
	return "on"
}

func comparaArray(a, b []string) bool {
	if len(a) != len(b) {
		return false
	}

	for i := range a {
		if a[i] != b[i] {
			return false
		}
	}

	return true
}
