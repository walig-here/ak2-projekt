#include "DataSets.h"

Byte::Byte(unsigned long long value){

    if(value < 0 || value > BYTE_MAX) throw std::invalid_argument("argument out of range");
    this->value = (unsigned char)value;

}

Word::Word(unsigned long long value){

    if(value < 0 || value > WORD_MAX) throw std::invalid_argument("argument out of range");
    
    low_byte = value % 0x100;
    high_byte = (value % 0x10000 - value % 0x100) / 0x100;

}
