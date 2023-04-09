#include "NaturalBinary.h"
#include <sstream>
#include <iomanip>
#include <vector>

NaturalBinary::NaturalBinary() : NaturalBinary(0){

}

NaturalBinary::NaturalBinary(long long int decimal_value) {

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
        bytes.push_front(element);
    }

}

NaturalBinary::~NaturalBinary(){

}

NaturalBinary NaturalBinary::operator+(NaturalBinary b){

    list<Byte> b_bytes = b.bytes;   // bajty drugiego składnika
    list<Byte> sum_bytes;           // bajty sumy
    
    // Dodajemy kolejne bajty
    auto b_byte = b_bytes.begin();

    Arithmetic::clc();
    for( auto a_byte : bytes ){
        sum_bytes.push_front(Arithmetic::addc(a_byte, *b_byte));
        b_byte++;
    }
    if(Arithmetic::carry()) sum_bytes.push_front(1);

    return sum_bytes;
}

NaturalBinary NaturalBinary::operator-(NaturalBinary b){

    list<Byte> b_bytes = b.bytes;   // bajty drugiego składnika
    list<Byte> diff_bytes;          // bajty różnicy
    
    // Dodajemy kolejne bajty
    auto b_byte = b.bytes.begin();

    Arithmetic::clc();
    for( auto a_byte : bytes ){
        diff_bytes.push_front(Arithmetic::sbb(a_byte, *b_byte));
        b_byte++;
    }
    if(Arithmetic::carry()) diff_bytes.push_front(1);

    return diff_bytes;

}

NaturalBinary NaturalBinary::operator*(NaturalBinary b){

    list<Byte> b_bytes = b.bytes;                       // bajty drugiego składnika

    vector<NaturalBinary> subproducts;                  // iloczyny częściowe
    subproducts.resize(b_bytes.size() * bytes.size());

    // Bierzemy bajt z drugiej liczby i mnożymy go z każdym bajtem pierwszej, za każdym razem mnożąc 
    // iloczyn częściowy przez 16 (dokładając dodatkowy, wyzerowany bajt na najmłodszej pozycji)
    int subproduct_index = 0;
    Word subproduct;

    for(auto b_byte : b_bytes){

        for(auto a_byte : bytes){

            subproduct = Arithmetic::mul(a_byte, b_byte);
            subproducts[subproduct_index] = list<Byte>({ subproduct.high_byte, subproduct.low_byte});

            for(int i = 0; i < subproduct_index%bytes.size() + subproduct_index/bytes.size(); i++)
                subproducts[subproduct_index].bytes.push_front(0x00);

            subproduct_index++;

        }

    }

    // Sumujemy iloczyny częściowe
    NaturalBinary product;
    int size_diff;
    for(auto subproduct : subproducts) {

        size_diff = subproduct.bytes.size() - product.bytes.size();
        for(int i = 0; i < size_diff && size_diff >= 0; i++)
            product.bytes.push_back(0x00);
        
        size_diff *= -1;
        for(int i = 0; i < size_diff && size_diff >= 0; i++)
            subproduct.bytes.push_back(0x00);

        product = product + subproduct;
    }

    // Koniec
    return product;

}

NaturalBinary NaturalBinary::operator%(NaturalBinary b){

    NaturalBinary remainder;
    if(b.bytes.size() == 1) NaturalBinary::divide_by_byte(*this, b.bytes.front(), &remainder);
    else long_divsion(b, &remainder);
    return remainder;

}

NaturalBinary NaturalBinary::operator/(NaturalBinary b){

    if(b.bytes.size() == 1) return NaturalBinary::divide_by_byte(*this, b.bytes.front());
    NaturalBinary remainder;
    return long_divsion(b, &remainder);

}

NaturalBinary NaturalBinary::long_divsion(NaturalBinary b, NaturalBinary* remainder){

    // Zamiast przez dzielnik dzielę, przez MSB dzielnika zwiększony o 1. Następnie usuwam nadmiarowe baty w uzyskanego wyniku.
    // Robię to, dopóki nie uzyskam ilorazu częściowego 0
    NaturalBinary quotient = 0;
    NaturalBinary subquotient;
    *remainder = *this;

    do{
        subquotient = NaturalBinary::divide_by_byte(*remainder, b.bytes.back().value+1);
        for(int i = 0; i < b.bytes.size()-1; i++) 
            subquotient.bytes.pop_front();
        if(subquotient.bytes.size() == 0) subquotient.bytes.push_back(0x00);

        quotient = quotient + subquotient;
        *remainder = *remainder - subquotient * b;
    }while(subquotient > 0);

    // Jeżeli reszta jest > dzielnk, to zwiększam iloraz o 1 i odejmuję od reszty dzielnik
    if(*remainder >= b){
        *remainder = *remainder - b;
        quotient = quotient + 1;
    }

    // Zwracam wynik
    return quotient;

}

NaturalBinary NaturalBinary::divide_by_byte(NaturalBinary divident, Byte divisor, NaturalBinary* final_remainder){

    // Jeżeli najstarsza pozycja dzielnej jest większa od dzielnika, to dostawiam  do niej zero, aby
    // od pary (0x00 | MSB dzielnej) rozpocząć dzielenie. W przeciwnym wypadku dzielenie rozpocznie się
    // od pary (MSB dzielnej | MSB-1 dzielnej)
    if(divident.bytes.back().value >= divisor.value || divident.bytes.size() == 1)
        divident.bytes.push_back(0x00);
    
    
    // W pierwszym korku pobieram parę dwóch najbardziej znaczących bitów z dzielnej i dziele je przez
    // dzielnik. W kolejnych krokach dzielę juz pary (reszta częściowa | kolejny bajt z dzielnej).
    auto divident_byte = divident.bytes.rbegin();
    Word divident_pair = divident_byte->value * 0x100 + (++divident_byte)->value;

    list<Byte> subquotients;
    Byte remainder;
    do {
        subquotients.push_back(Arithmetic::div(divident_pair, divisor, &remainder).value());
        divident_pair = remainder.value * 0x100 + (++divident_byte)->value;  
    } while (divident_byte != divident.bytes.rend());

    // Zwracamy wynik i resztę
    if(final_remainder != nullptr) *final_remainder = remainder.value;
    return subquotients;

}

bool NaturalBinary::optimize(){

    // Usuwamy najstarszy bajt dopóki jest on zerowy
    bool optimized = false;
    while (bytes.size() > 1 && bytes.front().value == 0x00){
        optimized = true;
        bytes.pop_front();
    }
    return optimized;

}


bool NaturalBinary::operator<=(NaturalBinary b){

    return *this == b || *this < b;

}

bool NaturalBinary::operator>=(NaturalBinary b){

    return *this == b || *this > b;

}

bool NaturalBinary::operator<(NaturalBinary b){

    this->optimize();
    b.optimize();

    // Jeżeli B będzie dłuższe od this, to będzie mniejsze od B
    if(bytes.size() != b.bytes.size()) return bytes.size() < b.bytes.size();

    // Porównuję kolejne bajty liczb zaczynając od najstarszych.
    // Jeżeli bajt z this będzię mniejszy od bajtu z B, to warunek jest spełniony
    auto a_byte = bytes.rbegin();
    auto b_byte = b.bytes.rbegin();
    while (a_byte != bytes.rend()){
        if(a_byte->value < b_byte->value)
            return true;
        else if(a_byte->value > b_byte->value) 
            return false;

        a_byte++;
        b_byte++;
    }
    return false;

}

bool NaturalBinary::operator>(NaturalBinary b){

    this->optimize();
    b.optimize();

    // Jeżeli this będzie dłuższe od B, to będzie większe od B
    if(bytes.size() != b.bytes.size()) return bytes.size() > b.bytes.size();

    // Porównuję kolejne bajty liczb zaczynając od najstarszych.
    // Jeżeli bajt z this będzię większy od bajtu z B, to warunek jest spełniony
    auto a_byte = bytes.rbegin();
    auto b_byte = b.bytes.rbegin();
    while (a_byte != bytes.rend()){
        if(a_byte->value > b_byte->value) 
            return true;
        else if(a_byte->value < b_byte->value) 
            return false;

        a_byte++;
        b_byte++;
    }
    return false;

}

bool NaturalBinary::operator==(NaturalBinary b){

    this->optimize();
    b.optimize();

    // Jeżeli nie są równych długości, to na pewno nie są równe
    if(bytes.size() != b.bytes.size()) return false;

    // Porównuję kolejne bajty liczb zaczynając od najstarszych.
    // Jeżeli bajty będą nierówne, to liczby sa nierówne
    auto a_byte = bytes.rbegin();
    auto b_byte = b.bytes.rbegin();
    while (a_byte != bytes.rend()){
        if(a_byte->value != b_byte->value)
            return false;
        a_byte++;
        b_byte++;
    }
    return true;

}

std::ostream& operator<<(std::ostream& os, NaturalBinary nb){

    os << nb.toString();
    return os;

}

string NaturalBinary::toString(){

    string number = "";
    stringstream byte_string;

    for(auto byte = bytes.rbegin(); byte != bytes.rend(); byte++ ){
        byte_string << setw(2) << setfill('0') << hex << (int)byte->value;
        number += byte_string.str();
        byte_string.str("");
    }
    number = "0x" + number;
    
    return number;

}
