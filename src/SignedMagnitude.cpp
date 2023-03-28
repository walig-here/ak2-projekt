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

    module = new NaturalBinary(decimal_value);

}

SignedMagnitude::SignedMagnitude(list <Byte> bytes_input , unsigned int input_exp, Bitflag input_sign) {
    negative = input_sign;
    exponent = input_exp;

    module = new NaturalBinary(bytes_input);

}


SignedMagnitude::~SignedMagnitude() {

    delete module;

}

list<Byte> SignedMagnitude::getByte() {
    return module->bytes;
}

Bitflag SignedMagnitude::getNegative() {
    return negative;
}