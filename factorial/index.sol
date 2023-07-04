// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0;

contract Factotial {
    function factorial(uint32 n) public pure returns (uint32)  {
        if(n == 0 || n == 1) {
            return 1;
        } else {
            return n * factorial(n - 1);
        }
    }
}