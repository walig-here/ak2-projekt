//
// Created by Jakub on 26.03.2023.
//
//#pragma once
#include "SignedMagnitude.h"

SignedMagnitude::SignedMagnitude(long long decimal_value) {

    if (decimal_value >= 0)
        negative = false;
    else {
        negative = true;
        decimal_value = abs(decimal_value);
    }

    if (decimal_value == 0) {
        bytes.push_back(Byte(0));
    }

    while (decimal_value) {
        bytes.push_back(Byte(decimal_value % 256));
        decimal_value = (int) decimal_value / 256;
    }

}

SignedMagnitude::SignedMagnitude(list <Byte> bytes_input , unsigned int input_exp, Bitflag input_sign) {
    negative = input_sign;
    exponent = input_exp;
//    bytes = bytes_input;

for(Byte element: bytes_input)
{
    bytes.push_back(element);
}

}


SignedMagnitude::~SignedMagnitude() {

}

list<Byte> SignedMagnitude::getByte() {
    return bytes;
}

Bitflag SignedMagnitude::getNegative() {
    return negative;
}