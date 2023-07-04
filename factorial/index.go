package main

import (
	"fmt"
)

func factorial(n uint32) uint32 {
	if n == 0 || n == 1 {
		return 1
	} else {
		return n * factorial(n-1)
	}
}

func main() {
	num := 5
	res := factorial(uint32(num))
	fmt.Printf("El factorial de %d es %d: \n", num, res)
}
