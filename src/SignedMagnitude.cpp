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

    module = decimal_value;

}

SignedMagnitude::SignedMagnitude(list<Byte> bytes_input, unsigned int input_exp, Bitflag input_sign) {
    negative = input_sign;
    exponent = input_exp;

    module = bytes_input;

}


SignedMagnitude::~SignedMagnitude() {

    

}

list<Byte> &SignedMagnitude::getByte() {
    return module.bytes;
}

Bitflag SignedMagnitude::getNegative() {
    return negative;
}

string SignedMagnitude::toString() {

    string number = (negative ? "-" : "") + module.toString();
    return number;

}

Bitflag SignedMagnitude::mulDivSign(SignedMagnitude b) {
    if (b.getNegative() * getNegative() > 0) {
        return false;
    } else {
        return true;
    }

}

Bitflag SignedMagnitude::addSign(SignedMagnitude b) {

    

    //checking by length
    if (module > b.module) {
        if (getNegative()==true) {
            return true;
        } else {
            return false;
        }
    } else if (module==b.module) {
        return false;
    } else {
        if (b.getNegative()==true) {
            return true;
        } else {
            return false;
        }
    }


}

Bitflag SignedMagnitude::subSign(SignedMagnitude b) {
    if (module > b.module) {
        if (getNegative()) {
            return true;
        } else {
            return false;
        }
    } else if (module == b.module) {
        return false;
    } else {
        if (b.getNegative()) {
            return false;
        } else {
            return true;
        }
    }
}
