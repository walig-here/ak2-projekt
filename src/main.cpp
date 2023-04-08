#include <iostream>
#include "SignedMagnitude.h"
using namespace std;

int main() {
    
    Byte a = BYTE_MAX;
    Byte b = 0x1;
    
    Arithmetic::stc();
    Word sum = Arithmetic::div(a,b);
    cout << hex << (int)sum.high_byte.value << " " << (int)sum.low_byte.value << endl;

    return 0;
}