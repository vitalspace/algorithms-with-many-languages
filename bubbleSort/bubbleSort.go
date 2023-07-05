package main

import "fmt"

func bubbleSort(arr []int) []int {
	ln := len(arr)

	for i := 0; i < ln; i++ {
		for j := 0; j < ln-1; j++ {
			if arr[j] > arr[j+1] {
				temp := arr[j]
				arr[j] = arr[j+1]
				arr[j+1] = temp
			}
		}
	}
	return arr
}

func main() {
	arr := []int{1, 4, 7, 8, 2, 5}
	sortArr := bubbleSort(arr)
	for i := 0; i < len(arr); i++ {
		fmt.Printf("%d", sortArr[i])
	}
}
