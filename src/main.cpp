#include <iostream>
#include "SignedMagnitude.h"
using namespace std;

int main() {
    
    Byte a = BYTE_MAX;
    Byte b = 0x1;
    
    Arithmetic::div(a,b);
    Arithmetic::add(a,b);
    Arithmetic::addc(a,b);
    Arithmetic::sbb(a,b);
    Arithmetic::sub(a,b);
    Arithmetic::mul(a,b);

    return 0;
}