#include "gtest/gtest.h"
#include "Arithmetic.h"

// Ustawianie flagi carry w stan wysoki
TEST(CARRY, SetCarry){
    
    Arithmetic::stc();
    ASSERT_EQ(true, Arithmetic::carry());

}

// Ustawianie flagi carry w stan niski
TEST(CARRY, ClearCarry){
    
    Arithmetic::clc();
    ASSERT_EQ(false, Arithmetic::carry());

}

// Dodawanie argumentów bez uwzględnienia przeniesienia, przy których nastąpi przepełnienie.
TEST(ADD, SumGreaterThanByteMax){

    
    Byte a = 0xFF;
    Byte b = 0xFF;
    Byte sum;

    // Flaga przeniesienia w stanie niskim
    Arithmetic::clc();
    sum = Arithmetic::add(a, b);
    ASSERT_EQ(0xFE, sum.value);
    ASSERT_EQ(true, Arithmetic::carry());

    // Flaga przeniesienia w stanie wysokim
    Arithmetic::stc();
    sum = Arithmetic::add(a, b);
    ASSERT_EQ(0xFE, sum.value);
    ASSERT_EQ(true, Arithmetic::carry());

}

// Dodawanie argumentów bez uwzględnienia przeniesienia, przy których nie nastąpi przepełnienie.
TEST(ADD, SumLessThanByteMaxValue){

    
    Byte a = 0x18;
    Byte b = 0x21;
    Byte sum;
    
    // Flaga przeniesienia w stanie niskim
    Arithmetic::clc();
    sum = Arithmetic::add(a, b);
    ASSERT_EQ(0x39, sum.value);
    ASSERT_EQ(false, Arithmetic::carry());

    // Flaga przeniesienia w stanie wysokim
    Arithmetic::stc();
    sum = Arithmetic::add(a, b);
    ASSERT_EQ(0x39, sum.value);
    ASSERT_EQ(false, Arithmetic::carry());

}

//---------------------------------------------------------------------------------------------------------

// Dodawanie argumentów z uwzględnieniem przeniesienia, przy których nastąpi przepełnienie.
TEST(ADDC, SumGreaterThanByteMax){

    
    Byte a = 0xFF;
    Byte b = 0xFF;
    Byte sum;

    // Flaga przeniesienia w stanie niskim
    Arithmetic::clc();
    sum = Arithmetic::addc(a, b);
    ASSERT_EQ(0xFE, sum.value);
    ASSERT_EQ(true, Arithmetic::carry());

    // Flaga przeniesienia w stanie wysokim
    Arithmetic::stc();
    sum = Arithmetic::addc(a, b);
    ASSERT_EQ(0xFF, sum.value);
    ASSERT_EQ(true, Arithmetic::carry());

}

// Dodawanie argumentów z uwzględnieniem przeniesienia, przy których nie nastąpi przepełnienie.
TEST(ADDC, SumLessThanByteMaxValue){

    
    Byte a = 0x18;
    Byte b = 0x21;
    Byte sum;
    
    // Flaga przeniesienia w stanie niskim
    Arithmetic::clc();
    sum = Arithmetic::addc(a, b);
    ASSERT_EQ(0x39, sum.value);
    ASSERT_EQ(false, Arithmetic::carry());

    // Flaga przeniesienia w stanie wysokim
    Arithmetic::stc();
    sum = Arithmetic::addc(a, b);
    ASSERT_EQ(0x3A, sum.value);
    ASSERT_EQ(false, Arithmetic::carry());

}

//---------------------------------------------------------------------------------------------------------

// Odejmowanie argumentów bez uwzględnienia pożyczki, przy których nastąpi aktywacja flagi pożyczki.
TEST(SUB, DifferenceLessThanZero){

    Byte a = 0x34;
    Byte b = 0xAA;
    Byte dif;

    // Flaga pożyczki w stanie niskim
    Arithmetic::clc();
    dif = Arithmetic::sub(a,b);
    ASSERT_EQ(dif.value, 0x8A);
    ASSERT_EQ(Arithmetic::carry(), true);

    // Flaga pożyczki w stanie wysokim
    Arithmetic::stc();
    dif = Arithmetic::sub(a,b);
    ASSERT_EQ(dif.value, 0x8A);
    ASSERT_EQ(Arithmetic::carry(), true);

}

// Odejmowanie argumentów bez uwzględnienia pożyczki, przy których nie nastąpi aktywacja flagi pożyczki.
TEST(SUB, DifferenceGreaterThanZero){

    Byte a = 0x17;
    Byte b = 0x10;
    Byte dif;

    // Flaga pożyczki w stanie niskim
    Arithmetic::clc();
    dif = Arithmetic::sub(a,b);
    ASSERT_EQ(dif.value, 0x07);
    ASSERT_EQ(Arithmetic::carry(), false);

    // Flaga pożyczki w stanie wysokim
    Arithmetic::stc();
    dif = Arithmetic::sub(a,b);
    ASSERT_EQ(dif.value, 0x07);
    ASSERT_EQ(Arithmetic::carry(), false);

}

//---------------------------------------------------------------------------------------------------------

// Odejmowanie argumentów bez uwzględnienia pożyczki, przy których nastąpi aktywacja flagi pożyczki.
TEST(SBB, DifferenceLessThanZero){

    Byte a = 0x34;
    Byte b = 0xAA;
    Byte dif;

    // Flaga pożyczki w stanie niskim
    Arithmetic::clc();
    dif = Arithmetic::sbb(a,b);
    ASSERT_EQ(dif.value, 0x8A);
    ASSERT_EQ(Arithmetic::carry(), true);

    // Flaga pożyczki w stanie wysokim
    Arithmetic::stc();
    dif = Arithmetic::sbb(a,b);
    ASSERT_EQ(dif.value, 0x89);
    ASSERT_EQ(Arithmetic::carry(), true);

}

// Odejmowanie argumentów bez uwzględnienia pożyczki, przy których nie nastąpi aktywacja flagi pożyczki.
TEST(SBB, DifferenceGreaterThanZero){

    Byte a = 0x17;
    Byte b = 0x10;
    Byte dif;

    // Flaga pożyczki w stanie niskim
    Arithmetic::clc();
    dif = Arithmetic::sbb(a,b);
    ASSERT_EQ(dif.value, 0x07);
    ASSERT_EQ(Arithmetic::carry(), false);

    // Flaga pożyczki w stanie wysokim
    Arithmetic::stc();
    dif = Arithmetic::sbb(a,b);
    ASSERT_EQ(dif.value, 0x06);
    ASSERT_EQ(Arithmetic::carry(), false);

}

//---------------------------------------------------------------------------------------------------------

// Mnożenie agrumentów, które spowodują aktywację flagi carry
TEST(MUL, ProductGreaterThanByte){

    Byte a = 0x14;
    Byte b = 0x15;
    Word prod;

    // Flaga pożyczki zapalona
    Arithmetic::clc();
    prod = Arithmetic::mul(a,b);
    ASSERT_EQ(prod.value(), 0x01A4);
    ASSERT_EQ(Arithmetic::carry(), true);
    ASSERT_NE(prod.high_byte.value, 0x00);

    // Flaga pożyczki zgaszona
    Arithmetic::stc();
    prod = Arithmetic::mul(a,b);
    ASSERT_EQ(prod.value(), 0x01A4);
    ASSERT_EQ(Arithmetic::carry(), true);
    ASSERT_NE(prod.high_byte.value, 0x00);

}

// Mnożenie agrumentów, które spowodują dezaktywacje flagi carry
TEST(MUL, ProductLowerThanByte){

    Byte a = 0x3;
    Byte b = 0x19;
    Word prod;

    // Flaga pożyczki zapalona
    Arithmetic::clc();
    prod = Arithmetic::mul(a,b);
    ASSERT_EQ(prod.value(), 0x004B);
    ASSERT_EQ(Arithmetic::carry(), false);
    ASSERT_EQ(prod.high_byte.value, 0x00);

    // Flaga pożyczki zgaszona
    Arithmetic::stc();
    prod = Arithmetic::mul(a,b);
    ASSERT_EQ(prod.value(), 0x004B);
    ASSERT_EQ(Arithmetic::carry(), false);
    ASSERT_EQ(prod.high_byte.value, 0x00);

}

//---------------------------------------------------------------------------------------------------------

// Próba podzielenia przez 0
TEST(DIV, DivideByZero){

    Byte a = 0x10;
    Byte b = 0x00;
    Word result;

    ASSERT_THROW(Arithmetic::div(a,b), std::runtime_error);

}

// Dzielenie argumentów, które podzielą się bez reszty
TEST(DIV, DivideRemainderZero){

    Byte a;
    Byte b;
    Word result;

    // 256 / 1 = 256, r=0
    a = BYTE_MAX;
    b = 0x1;
    result = Arithmetic::div(a,b);
    ASSERT_EQ(result.high_byte.value, BYTE_MAX);
    ASSERT_EQ(result.low_byte.value, 0x00);


    // 128 / 2 = 64, r = 0
    a = 128;
    b = 2;
    result = Arithmetic::div(a,b);
    ASSERT_EQ(result.high_byte.value, 64);
    ASSERT_EQ(result.low_byte.value, 0);

    // 0 / 34 = 0, r=0
    a = 0;
    b = 34;
    result = Arithmetic::div(a,b);
    ASSERT_EQ(result.high_byte.value, 0);
    ASSERT_EQ(result.low_byte.value, 0);

}


// Dzielenie argumentów, które podzielą się z resztą
TEST(DIV, DivideRemainderNonZero){

    Byte a;
    Byte b;
    Word result;

    // 17 / 5 = 3, r=2
    a = 17;
    b = 5;
    result = Arithmetic::div(a,b);
    ASSERT_EQ(result.high_byte.value, 3);
    ASSERT_EQ(result.low_byte.value, 2);

    // 133 / 45 = 2 r=43
    a = 133;
    b = 45;
    result = Arithmetic::div(a,b);
    ASSERT_EQ(result.high_byte.value, 2);
    ASSERT_EQ(result.low_byte.value, 43);

    // 89 / 255 = 0, r=89
    a = 89;
    b = 255;
    result = Arithmetic::div(a,b);
    ASSERT_EQ(result.high_byte.value, 0);
    ASSERT_EQ(result.low_byte.value, 89);

}

// Entry point modułu testującego klasę Arithmetic
int main(int argc, char const *argv[])
{
    ::testing::InitGoogleTest();
    return RUN_ALL_TESTS();
}

