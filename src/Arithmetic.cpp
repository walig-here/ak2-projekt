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
        "movb %[operand_1], %%al\n"
        "addb  %[operand_2], %%al\n"
        "setc %[carry]\n"
        : "=al" (sum.value)
        : [operand_1] "m" (a.value), [operand_2] "m" (b.value), [carry] "m" (carry_flag)
    );
    return sum;

}

Byte Arithmetic::addc(Byte a, Byte b){

    if(carry_flag) stc();
    else clc();

    Byte sum;
    asm (
        "movb %[operand_1], %%al\n"
        "adcb  %[operand_2], %%al\n"
        "setc %[carry]\n"
        : "=al" (sum.value)
        : [operand_1] "m" (a.value), [operand_2] "m" (b.value), [carry] "m" (carry_flag)
    );
    return sum;

}

Byte Arithmetic::sub(Byte a, Byte b){

    Byte diff;
    asm(
        "movb %[operand_1], %%al\n"
        "subb  %[operand_2], %%al\n"
        "setc %[carry]\n"
        : "=al" (diff.value)
        : [operand_1] "m" (a.value), [operand_2] "m" (b.value), [carry] "m" (carry_flag)
    );
    return diff;

}

Byte Arithmetic::sbb(Byte a, Byte b){

    if(carry_flag) stc();
    else clc();

    Byte diff;
    asm(
        "movb %[operand_1], %%al\n"
        "sbbb  %[operand_2], %%al\n"
        "setc %[carry]\n"
        : "=al" (diff.value)
        : [operand_1] "m" (a.value), [operand_2] "m" (b.value), [carry] "m" (carry_flag)
    );
    return diff;

}

Word Arithmetic::mul(Byte a, Byte b){

    Word product;
    asm(
        "movb %[operand_1], %%al\n"
        "mulb  %[operand_2]\n"
        "movb %%ah, %[high]\n"
        "movb %%al, %[low]\n"
        "setc %[carry]\n"
        : 
        : [operand_1] "m" (a.value), [operand_2] "m" (b.value), [carry] "m" (carry_flag), [high] "m" (product.high_byte.value), [low] "m" (product.low_byte.value)
    );
    return product;

}

Word Arithmetic::div(Word a, Byte b, Byte* remainder){

    if(b.value == 0) throw std::runtime_error("division by 0");
    
    Word result;
    asm(
        "xorw %%dx, %%dx\n"
        "divw  %%cx\n"
        "movb %%ah, %[product_high]\n"
        "movb %%al, %[product_low]\n"
        "movb %%dl, %[remainder]"
        : 
        : "a" (a.value()), "c" (b.value), [product_low] "m" (result.low_byte.value), [product_high] "m" (result.high_byte.value), [remainder] "m" (remainder->value)
    );
    return result;

}
