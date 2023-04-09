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