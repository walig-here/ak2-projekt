#include "NaturalBinary.h"

NaturalBinary::NaturalBinary(long long decimal_value) {

    if (decimal_value == 0) {
        bytes.push_back(Byte(0));
    }

    while (decimal_value) {
        bytes.push_back(Byte(decimal_value % 256));
        decimal_value = (int) decimal_value / 256;
    }

}

NaturalBinary::NaturalBinary(list<Byte> bytes_input) {

    for(Byte element: bytes_input){
        bytes.push_back(element);
    }

}

NaturalBinary::~NaturalBinary(){

}