package main

import (
	"fmt"
)

func primes(n int) bool {
	if n <= 1 {
		return false
	}

	i := 2

	for i*i <= n {
		if n%i == 0 {
			return false
		}
		i += 1
	}
	return true
}

func main() {
	num := 5
	res := primes(num)
	if !res {
		fmt.Printf("The number %d is not a prime number", num)
	} else {
		fmt.Printf("The number %d is a prime number", num)
	}
}
