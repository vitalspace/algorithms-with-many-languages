export const binarySearch = (arr: number[], target: number): number => {
    let left = 0;
    let right = arr.length - 1;

    while (left <= right) {
        let mid = Math.floor((left + right) / 2);
        if (arr[mid] === target) {
            return mid;
        } else if (arr[mid] < target) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    return -1;
}

// const arr: number[] = [2, 4, 6, 8, 10];
// console.log(binarySearch(arr, 4))