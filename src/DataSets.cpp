#include "DataSets.h"

Byte::Byte(unsigned long long value){

    if(value < 0 || value > BYTE_MAX) this->value = 0;
    else this->value = (unsigned char)value;

}

Word::Word(unsigned long long value){

    if(value < 0 || value > WORD_MAX) {
        low_byte = 0x00;
        high_byte = 0x00;
    }
    else {
        low_byte = value % 0x100;
        high_byte = (value % 0x10000 - value % 0x100) / 0x100;
    }

}
