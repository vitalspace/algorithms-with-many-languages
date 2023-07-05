#include <stdio.h>
#include <stdbool.h>

bool primes (int n) {
    if(n <= 1) {
        return false;
    }

    int i = 2;

    while (i * i <= n) 
    {
        if(n % i == 0) {
            return false;
        }
        i+= i;
    }
    return true;    
}

int main() {
    int num = 6;
    bool res = primes(num);

    if(!res) {
        printf("The number %d is not a prime number", num);
    } else {
        printf("The number %d is a prime number");
    }

    return 0;
}