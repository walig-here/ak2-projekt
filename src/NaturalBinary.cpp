#include "NaturalBinary.h"
#include <sstream>

NaturalBinary::NaturalBinary(long long decimal_value) {

    if (decimal_value == 0) {
        bytes.push_back(Byte(0));
    }

    while (decimal_value) {
        bytes.push_back(decimal_value % 256);
        decimal_value = decimal_value / 256;
    }

}

NaturalBinary::NaturalBinary(list<Byte> bytes_input) {

    for(Byte element: bytes_input){
        bytes.push_back(element);
    }

}

NaturalBinary::~NaturalBinary(){

}

string NaturalBinary::toString(){

    string number = "";
    stringstream byte_string;
    for(auto byte : bytes) {
        byte_string << hex << (int)byte.value;
        number = byte_string.str() + number;
    }
    return number;

}