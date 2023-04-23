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
    exponent = 0;

}

SignedMagnitude::SignedMagnitude() : SignedMagnitude(0) {

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

    string number = module.toString();
    if(exponent > 0) number.insert(number.length() - 2*exponent, ".");
    number = (negative ? "-" : "") + number;

    return number;

}

Bitflag SignedMagnitude::mulDivSign(SignedMagnitude b) {
    if (b.getNegative() * getNegative() > 0) {
        return false;
    } else {
        return true;
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

NaturalBinary SignedMagnitude::alignModuleWith(SignedMagnitude b){

    NaturalBinary alignedModule;                                            // wyrównany moduł
    alignedModule.bytes = this->module.bytes;

    unsigned int_length_a = alignedModule.bytes.size() - this->exponent;    // długość części całkowitej a
    unsigned int_length_b = b.module.bytes.size() - b.exponent;             // długość części całkowitej b

    // Jeżeli this jest krótsze w części całkowitej od B, to kompensujemy te różnice
    // dokładając na najstarsze pozycje wyzerowane bajty
    for(int length_diff = int_length_b - int_length_a; length_diff > 0; length_diff--) 
        alignedModule.bytes.push_back(0x00);

    // Jeżeli diff ma mniejszą precyzję, to kompensujemy różnicę, dokładając
    // na najmłodsze pozycje wyzerowane bajty
    for(int exp_diff = b.exponent - exponent; exp_diff > 0; exp_diff--)
        alignedModule.bytes.push_front(0x00);

    return alignedModule;

}

SignedMagnitude SignedMagnitude::operator+(SignedMagnitude b){

    // Skaluję moduły
    NaturalBinary a_module = this->alignModuleWith(b);
    NaturalBinary b_module = b.alignModuleWith(*this);

    // Wybieram działanie i wyznaczam moduł wyniku
    SignedMagnitude result;
    if( !(this->negative ^ b.negative) ) 
        result.module = a_module + b_module;
    else if(a_module>=b_module) 
        result.module = a_module - b_module;
    else 
        result.module = b_module - a_module;

    // Wyznaczam znak
    result.negative = (b.negative && negative) || (b.negative && a_module<b_module) || (negative && a_module>b_module);

    // Pozbywam się nadmiarowych bajtów z modułu
    result.module.optimize();

    // Przyjmuję prezycję dokładniejszej liczby (o ile wynik nie jest zerowy)
    if(result.module > 0x00) result.exponent = max(this->exponent, b.exponent);

    // Zwracam wynik
    return result;

}

SignedMagnitude SignedMagnitude::operator-(SignedMagnitude b){

    // Odejmowanie to po prostu dodawanie, gdzie znak drugiego operandu jest zmieniony na przeciwny
    b.negative = !b.negative;
    return *this+b;

}

SignedMagnitude SignedMagnitude::operator*(SignedMagnitude b){

    // Wyznaczam moduł
    SignedMagnitude result;
    result.module = module * b.module;

    // Wyznaczam znak
    result.negative = negative ^ b.negative;

    // Precyzja wyniku jest sumą precyzji czynników
    result.exponent = this->exponent + b.exponent;

    // Zwracam wynik
    return result;

}

SignedMagnitude SignedMagnitude::operator/(SignedMagnitude b){

    // Skaluję moduły tak, aby wynik miał precyzję taką samą jak dzielna
    NaturalBinary a_module = module;
    NaturalBinary b_module = b.module;

    for(unsigned a_exp = exponent; (int)a_exp - (int)b.exponent != exponent; a_exp++)
        a_module.bytes.push_front(0x00);

    // Wyznaczam moduł
    SignedMagnitude result;
    result.module = a_module / b_module;

    // Wyznaczam znak
    if(result.module > 0x00) result.negative = negative ^ b.negative;

    // Precyzja wyniku jest precyzją dzielnej
    result.exponent = exponent;

    // Zwracam wynik
    return result;

}

void SignedMagnitude::set_precission(unsigned precission){

    // Ustalam różnicę między obecną, a nową precyzją
    // Różnica dodatnia -> zwiększam precyzję dokładając wyzerowane bajty na najmłodszych pozycjach
    // Różnica ujemna -> zmniejszam precyzję usuwając bajty z najmłodszych pozycji
    int precission_diff = precission - exponent;

    if(precission_diff == 0) return;

    if(precission_diff > 0)
        for(; exponent < precission; exponent++)
            module.bytes.push_front(0x00);
    else
        for(; exponent > precission; exponent--)
            module.bytes.pop_front();

}

std::ostream& operator<<(std::ostream& os, SignedMagnitude sm){
    os << sm.toString();
    return os;
}