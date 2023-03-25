#include "Arithmetic.h"

Bitflag Arithmetic::carry = 0;

Byte Arithmetic::add(Byte a, Byte b){

    carry = ( a.value+b.value > BYTE_MAX ? 1 : 0 );
    Byte sum = (unsigned char)(a.value + b.value);
    return sum;

}

Byte Arithmetic::addc(Byte a, Byte b){

    Byte sum = (unsigned char)(a.value + b.value + carry);
    carry = ( a.value+b.value + carry > BYTE_MAX ? 1 : 0 );
    return sum;

}

Byte Arithmetic::sub(Byte a, Byte b){

    Byte diff = (unsigned char)(a.value - b.value);
    carry = ( a.value - b.value < 0 ? 1 : 0 );
    return diff;

}

Byte Arithmetic::sbb(Byte a, Byte b){

    Byte diff = (unsigned char)(a.value - b.value - carry);
    carry = ( a.value - b.value - carry < 0 ? 1 : 0 );
    return diff;

}

Word Arithmetic::mul(Byte a, Byte b){

    Word prod = a.value * b.value;
    carry = ( a.value * b.value > 0xFF ? 1 : 0 );
    return prod;

}

Word Arithmetic::div(Byte a, Byte b){

    if(b.value == 0) throw std::runtime_error("division by 0");

    Byte quot = a.value / b.value;
    Byte rem = a.value % b.value;
    return Word(rem.value + quot.value * 0x100);

}
