// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract Primes {
    function primes(uint32 n) public pure returns (bool) {
        if (n <= 1) {
            return false;
        }

        uint32 i = 2;

        while (i * i <= n) {
            if (n % i == 0) {
                return false;
            }

            i += i;
        }
        
        return true;
    }
}
