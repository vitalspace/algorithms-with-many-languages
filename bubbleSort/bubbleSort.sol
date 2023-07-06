// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract BubbleSort {
    function bubbleSort(uint[] memory arr) public pure returns (uint[] memory) {
        uint len = arr.length;

        for (uint i = 0; i < len; i++) {
            for (uint j = 0; j < len - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    uint temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
        return arr;
    }
}
