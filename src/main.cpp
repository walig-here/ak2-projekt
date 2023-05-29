#include <iostream>
#include "SignedMagnitude.h"
using namespace std;

/**
 * @brief 
 * Liczenie n-tego wyrazu ciągu Fibbonacciego.
 * 
 * @param n 
 */
SignedMagnitude fibbonacci(SignedMagnitude n){
    if(n <= 1) return n;

    SignedMagnitude prev_prev = 0;
    SignedMagnitude prev = 1;
    SignedMagnitude current;
    for(SignedMagnitude i = 2; i <= n; i = i + 1){
        current = prev + prev_prev;
        prev_prev = prev;
        prev = current;
    }

    return current;
}

int main() {
    fibbonacci(100000);
    return 0;
}