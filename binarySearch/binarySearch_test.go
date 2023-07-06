package main

import (
	"fmt"
	"math"
	"testing"
)

func binarySearch(arr []int, target int) int {
	left := 0
	right := len(arr) - 1

	for left <= right {
		mid := int(math.Floor(float64(left+right) / 2))
		if arr[mid] == target {
			return mid
		} else if arr[mid] < target {
			left = mid + 1
		} else {
			right = mid - 1
		}
	}
	return -1
}

func TestBinarySearch(t *testing.T) {
	arr := []int{1, 2, 3, 4, 5, 6}

	target := 4
	expected := 3
	result := binarySearch(arr, target)
	if result != expected {
		t.Errorf("Expected index %d, but got %d", expected, result)
	}

	target = 6
	expected = 5
	result = binarySearch(arr, target)
	if result != expected {
		t.Errorf("Expected index %d, but got %d", expected, result)
	}

	target = 0
	expected = -1
	result = binarySearch(arr, target)
	if result != expected {
		t.Errorf("Expected index %d, but got %d", expected, result)
	}
}

func main() {
	arr := []int{1, 2, 3, 4, 5, 6}
	target := 4
	result := binarySearch(arr, target)
	fmt.Printf("Index: %d", result)

	// Run Testing
	testBinarySearch := TestBinarySearch
	testBinarySearch(nil)
}
