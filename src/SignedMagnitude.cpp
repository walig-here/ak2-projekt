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

bool SignedMagnitude::operator==(SignedMagnitude b){

    // Liczby są równe, gdy ich znaki są równe
    if(negative != b.negative) return false;

    // Liczby muszą miec także moduły, aby być równe
    // Jako że równe liczby mogą mieć różne prezycje, to sprowadzamy moduły do równych długości
    return alignModuleWith(b) == b.alignModuleWith(*this);

}

bool SignedMagnitude::operator<(SignedMagnitude b){

    // Jeżeli this jest dodatnie, a B ujemne, to this na pewno nie jest mniejsze
    if(!negative && b.negative) return false;

    // Jeżeli this jest ujemne, a B dodatnie, to na pewno this jest mniejsze
    if(negative && !b.negative) return true;

    // Jeżeli liczby są dodatnie to mniejsza jest ta z mniejszym modułem
    if(!negative && !b.negative) return alignModuleWith(b) < b.alignModuleWith(*this);

    // Jeżeli są ujemne, to mniejsza jest ta z większym modułem
    return alignModuleWith(b) > b.alignModuleWith(*this);

}

bool SignedMagnitude::operator>(SignedMagnitude b){

    // Jeżeli this jest dodatnie, a B ujemne, to this na pewno jest większe
    if(!negative && b.negative) return true;

    // Jeżeli this jest ujemne, a B dodatnie, to na pewno this nie jest większe
    if(negative && !b.negative) return false;

    // Jeżeli liczby są dodatnie to większa jest ta z większym modułem
    if(!negative && !b.negative) return alignModuleWith(b) > b.alignModuleWith(*this);

    // Jeżeli są ujemne, to mniejsza jest ta z mniejszym modułem
    return alignModuleWith(b) < b.alignModuleWith(*this);

}

bool SignedMagnitude::operator>=(SignedMagnitude b){

    return *this == b || *this > b;

}

bool SignedMagnitude::operator<=(SignedMagnitude b){

    return *this == b || *this < b;

}

SignedMagnitude::SignedMagnitude(list<Byte> bytes_input, unsigned int input_exp, Bitflag input_sign) {

    if(bytes_input.size() == 0){
        SignedMagnitude(0);
        return;
    }

    negative = input_sign;
    exponent = input_exp;
    module = bytes_input;

}


SignedMagnitude::~SignedMagnitude() {}

Bitflag SignedMagnitude::isNegative() {
    return negative;
}

string SignedMagnitude::toString() {

    string number = module.toString();
    if(exponent > 0) number.insert(number.length() - 2*exponent, ".");
    number = (negative ? "-" : "") + number;

    return number;

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

    // Usuwam zbędne bajty
    result.optimize();

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

    // Sprowadzam do odpowiedniej postaci
    result.optimize();

    // Zwracam wynik
    return result;

}

void SignedMagnitude::optimize(){

    // Optymalizuje moduł
    module.optimize();

    // Dodaję bajty zerowe na starszych pozycjach, aby uzyskać poprawną część dziesiętną
    while( module.bytes.size() < exponent + 1)
        module.bytes.push_back(0x00);

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