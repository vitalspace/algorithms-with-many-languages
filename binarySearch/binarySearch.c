#include <stdio.h>
#include <math.h>

int binarySearch(int arr[], int size, int target) {
    int left = 0;
    int right = size - 1;

    while (left <= right)
    {
        int mid = floor((left + right) / 2);
        if (arr[mid] == target) {
            return mid;
        } else if (arr[mid] < target) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    
    return -1;
}

int main() {
    int arr[] = {2, 4, 6, 8, 10};
    int size = sizeof(arr) / sizeof(arr[0]);
    int target = 6;
    int res = binarySearch(arr, size, target);
    printf("Index: %d\n", res);
    return 0;
}
