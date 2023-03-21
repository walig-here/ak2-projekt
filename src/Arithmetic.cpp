#include "headers\Arithmetic.h"

Bitflag Arithmetic::carry = 0;

Byte Arithmetic::add(Byte a, Byte b){

    carry = ( a+b > MAX_BYTE, 1, 0 );
    return a+b;

}

Byte Arithmetic::addc(Byte a, Byte b){

    carry = ( a+b+carry > MAX_BYTE, 1, 0 );
    return a+b+carry;

}

Byte Arithmetic::sub(Byte a, Byte b){

}

Byte Arithmetic::mul(Byte a, Byte b){

}

Byte Arithmetic::div(Byte a, Byte b){

}