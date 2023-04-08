#include "Arithmetic.h"

Bitflag Arithmetic::carry_flag;

void Arithmetic::stc(){

    asm( "stc" );
    carry_flag = 1;

}

void Arithmetic::clc(){
    
    asm( "clc" );
    carry_flag = 0;

}

Bitflag Arithmetic::carry(){
    return carry_flag;
}

Byte Arithmetic::add(Byte a, Byte b){

    Byte sum;
    asm(
        "addb  %%dl, %%al\n"
        "setc %[carry]\n"
        : "=al" (sum.value)
        : "a" (a.value), "d" (b.value), [carry] "m" (carry_flag)
    );
    return sum;

}

Byte Arithmetic::addc(Byte a, Byte b){

    if(carry_flag) stc();
    else clc();

    Byte sum;
    asm (
        "adcb  %%dl, %%al\n"
        "setc %[carry]\n"
        : "=al" (sum.value)
        : "a" (a.value), "d" (b.value), [carry] "m" (carry_flag)
    );
    return sum;

}

Byte Arithmetic::sub(Byte a, Byte b){

    Byte diff;
    asm(
        "subb  %%dl, %%al\n"
        "setc %[carry]\n"
        : "=al" (diff.value)
        : "a" (a.value), "d" (b.value), [carry] "m" (carry_flag)
    );
    return diff;

}

Byte Arithmetic::sbb(Byte a, Byte b){

    if(carry_flag) stc();
    else clc();

    Byte diff;
    asm(
        "sbbb  %%dl, %%al\n"
        "setc %[carry]\n"
        : "=al" (diff.value)
        : "a" (a.value), "d" (b.value), [carry] "m" (carry_flag)
    );
    return diff;

}

Word Arithmetic::mul(Byte a, Byte b){

    Word product;

    asm(
        "mulb  %%dl\n"
        "movb %%ah, %[high]\n"
        "movb %%al, %[low]\n"
        "setc %[carry]\n"
        : [high] "=al" (product.high_byte.value), [low] "=ah" (product.low_byte.value)
        : "a" (a.value), "d" (b.value), [carry] "m" (carry_flag)
    );
    return product;

}

Word Arithmetic::div(Byte a, Byte b){

    if(b.value == 0) throw std::runtime_error("division by 0");
    Word result;


    asm(
        "divb  %%dl\n"
        "movb %%ah, %[remainder]\n"
        "movb %%al, %[product]\n"
        :
        : "a" (a.value), "d" (b.value), [product] "m" (result.high_byte.value), [remainder] "m" (result.low_byte.value)
    );
    return result;

}
