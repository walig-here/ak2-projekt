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

SignedMagnitude::SignedMagnitude(list<Byte> bytes_input, unsigned int input_exp, Bitflag input_sign) {
    negative = input_sign;
    exponent = input_exp;

    module = new NaturalBinary(bytes_input);

}


SignedMagnitude::~SignedMagnitude() {

    delete module;

}

list<Byte> &SignedMagnitude::getByte() {
    return module->bytes;
}

Bitflag SignedMagnitude::getNegative() {
    return negative;
}

string SignedMagnitude::toString() {

    string number = (negative ? "-" : "") + module->toString();
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
    if (getByte().size() > b.getByte().size()) {
        if (getNegative() == true) {
            return true;
        } else {
            return false;
        }
    } else if (getByte().size() == b.getByte().size()) {
        auto pointer_on_b_magni = b.getByte().begin();
        for (auto element: getByte()) {

            if (pointer_on_b_magni->value < element.value) {
                if (getNegative() == true) {
                    return true;
                } else {
                    return false;
                }
            }
            if (pointer_on_b_magni->value > element.value) {

                if (b.getNegative() == true) {
                    return true;
                } else {
                    return false;
                }
            }
            pointer_on_b_magni++;
        }
        //jezeli rzeczywisce sa rowne

        return false;
    } else {
        if (b.getNegative() == true) {
            return true;
        } else {
            return false;
        }
    }


}

Bitflag SignedMagnitude::subSign(SignedMagnitude b) {
    if (getByte().size() > b.getByte().size()) {
        if (getNegative()) {
            return true;
        } else {
            return false;
        }
    } else if (getByte().size() == b.getByte().size()) {
        auto pointer_on_b_magnii = b.getByte().begin();
        for (Byte element: getByte()) {
            if (pointer_on_b_magnii->value < element.value) {
                if (getNegative()) {
                    return true;
                } else {
                    return false;
                }
            }
            if (pointer_on_b_magnii->value > element.value) {
                if (b.getNegative()) {
                    return false;
                } else {
                    return true;
                }
            }
            pointer_on_b_magnii++;
        }
        //jezeli rzeczywisce sa rowne
        return false;
    } else {
        if (b.getNegative()) {
            return false;
        } else {
            return true;
        }
    }
}
