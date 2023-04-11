#include "gtest/gtest.h"
#include "NaturalBinary.h"

// Dodawanie dwóch liczb NB
TEST(ADD, JustAddNB){

    NaturalBinary a = 0;
    NaturalBinary b = 0;

    // 1 - bajtowe
    a = 0xAF;
    b = 0xF4;
    ASSERT_EQ((a+b).toString(), "0x01a3");

    // 2 - bajtowe
    a = 0xFF23;
    b = 0x8967;
    ASSERT_EQ((a+b).toString(), "0x01888a");

    // 4 - bajtowe
    a = 0x54be638a;
    b = 0xbbf1b542;
    ASSERT_EQ((a+b).toString(), "0x0110b018cc");

    // 8 - bajtowe
    a = list<Byte>({0xb0, 0x41, 0x4f, 0xab, 0x89, 0xd5, 0x31, 0x81});
    cout << a.toString() << endl;
    b = list<Byte>({0x14, 0x25, 0x1a, 0xd3, 0xb2, 0xc0, 0x50, 0x2d});
    cout << b.toString() << endl;
    ASSERT_EQ((a+b).toString(), "0xc4666a7f3c9581ae");

}

// Odejmowanie dwóch liczb NB
TEST(SUB, JustSubNB){

    NaturalBinary a = 0;
    NaturalBinary b = 0;

    // 1 - bajtowe
    a = 0xC1;
    b = 0x1E;
    ASSERT_EQ((a-b).toString(), "0xa3");

    // 2 - bajtowe
    a = 0xc4a8;
    b = 0x1b73;
    ASSERT_EQ((a-b).toString(), "0xa935");

    // 4 - bajtowe
    a = 0x2efa816e;
    b = 0x1f56f63e;
    ASSERT_EQ((a-b).toString(), "0x0fa38b30");

    // 8 bajtowe
    a = list<Byte>({0xa1, 0x04, 0x66, 0x37, 0x8e, 0x03, 0x67, 0x4a});
    b = list<Byte>({0x38, 0xf6, 0x2b, 0x99, 0x58, 0xcd, 0x46, 0xad});
    ASSERT_EQ((a-b).toString(), "0x680e3a9e3536209d");

}

// Mnożenie liczb NB
TEST(MUL, JustMulNB){

    NaturalBinary a = 0;
    NaturalBinary b = 0;

    // 1 - bajtowe
    a = 0xf1;
    b = 0x92;
    ASSERT_EQ((a*b).toString(), "0x8972");

    // 2 - bajtowe
    a = 0x98e7;
    b = 0x3c5a;
    ASSERT_EQ((a*b).toString(), "0x240be536");

    // 4 - bajtowe
    a = 0x9322ad3e;
    b = 0xce2520ac;
    ASSERT_EQ((a*b).toString(), "0x767b3e321eea25a8");

    // 8 - bajtowe
    a = list<Byte>({0xca, 0x19, 0xe1, 0x1b, 0x83, 0xb6, 0xb6, 0x30});
    b = list<Byte>({0x13, 0x55, 0x88, 0x11, 0x0a, 0x50, 0xe0, 0x4e});
    ASSERT_EQ((a*b).toString(), "0x0f4371b7fc5cb7f282748f08d01582a0");

}

// Podzielenie liczby NB przez bajt
TEST(DIV, DivByOneByte){

    NaturalBinary divident;
    Byte divisor;
    NaturalBinary remainder;

    // 1271 : 165
    divident = 1271;
    divisor = 165;
    ASSERT_EQ(NaturalBinary::divide_by_byte(divident, divisor, &remainder).toString(), "0x07");
    ASSERT_EQ(remainder.toString(), "0x74");

    // 2581 : 1 = 2581, r = 0
    divident = 2581;
    divisor = 1;
    ASSERT_EQ(NaturalBinary::divide_by_byte(divident, divisor, &remainder).toString(), "0x0a15");
    ASSERT_EQ(remainder.toString(), "0x00");

    // 981529983 : 62
    divident = 981529983;
    divisor = 62;
    ASSERT_EQ(NaturalBinary::divide_by_byte(divident, divisor, &remainder).toString(), "0xf19058");
    ASSERT_EQ(remainder.toString(), "0x2f");

    // 0 : 144
    divident = 0;
    divisor = 144;
    ASSERT_EQ(NaturalBinary::divide_by_byte(divident, divisor, &remainder).toString(), "0x00");
    ASSERT_EQ(remainder.toString(), "0x00");

    // 255 : 56
    divident = 255;
    divisor = 56;
    ASSERT_EQ(NaturalBinary::divide_by_byte(divident, divisor, &remainder).toString(), "0x04");
    ASSERT_EQ(remainder.toString(), "0x1f");

}

// Podzielenie liczby NB prez wyzerowany bajt
TEST(DIV, DivByOneZeoredByte){

    NaturalBinary divident = 567;
    Byte divisor = 0;
    
    ASSERT_THROW(NaturalBinary::divide_by_byte(divident, divisor), std::runtime_error);

}

// Podzielenie dwóch liczb NB
TEST(DIV, JustDivNB){

    NaturalBinary a;
    NaturalBinary b;

    // przez 1
    a = 0x5678;
    b = 0x01;
    ASSERT_EQ((a/b).toString(), "0x5678");

    // 1 - bajtowe
    a = 0x64;
    b = 0x5c;
    ASSERT_EQ((a/b).toString(), "0x01");

    // 2 - bajtowe
    a = 0x57c1;
    b = 0xe729;
    ASSERT_EQ((a/b).toString(), "0x00");

    // 4 - bajtowe
    a = 0xfb91646c;
    b = 0x713ed89c;
    ASSERT_EQ((a/b).toString(), "0x02");

    // 8 - bajtowe
    a = list<Byte>{ 0xdb, 0x76, 0x17, 0xe9, 0x12, 0xd1, 0x05, 0x30 };
    b = list<Byte>{ 0x4e, 0xdb, 0xd9, 0xb6, 0x30, 0x4b, 0xbe, 0xdd };
    ASSERT_EQ((a/b).toString(), "0x02");

}

// Podzielenie przez 0 w NB
TEST(DIV, DivByZeroNB){

    NaturalBinary a = 32445565;
    NaturalBinary b = 0;
    ASSERT_THROW(a/b, std::runtime_error);

}

// Modulo w NB
TEST(DIV, JustModNB){

    NaturalBinary a;
    NaturalBinary b;

    // przez 1
    a = 0x5678;
    b = 0x01;
    ASSERT_EQ((a%b).toString(), "0x00");

    // 1 - bajtowe
    a = 0x9e;
    b = 0x71;
    ASSERT_EQ((a%b).toString(), "0x2d");

    // 2 - bajtowe
    a  = 0x5291;
    b = 0x150a;
    ASSERT_EQ((a%b).toString(), "0x1373");

    // 4 - bajtowe
    a = 0xa53eee4c;
    b = 0x08f6906a;
    ASSERT_EQ((a%b).toString(), "0x03e8c6d8");

    // 8 -bajtowe
    a = list<Byte>{0xc6, 0xac, 0x1d, 0xc4, 0xbb, 0xe1, 0x5e, 0x4b};
    b = list<Byte>{0x0f,0x1a,0x5e,0xf7,0xc3,0xaa,0xf7,0x65};
    ASSERT_EQ((a%b).toString(), "0x02554b2fcc32ce2a");



}

// Operacja ==
TEST(CMP, IsEqual){

    NaturalBinary a;
    NaturalBinary b;

    // a == b
    a = 56;
    b = 56;
    ASSERT_EQ(a == b, true);

    // a < b
    a = 23;
    b = 1235;
    ASSERT_EQ(a == b, false);

    // a > b
    a = 2343564;
    b = 3;
    ASSERT_EQ(a == b, false);

}

// Operacja >
TEST(CMP, IsGreater){

    NaturalBinary a;
    NaturalBinary b;

    // a == b
    a = 56;
    b = 56;
    ASSERT_EQ(a > b, false);

    // a < b
    a = 23;
    b = 1235;
    ASSERT_EQ(a > b, false);

    // a > b
    a = 2343564;
    b = 3;
    ASSERT_EQ(a > b, true);

}

// Operacja <
TEST(CMP, IsSmaller){

    NaturalBinary a;
    NaturalBinary b;

    // a == b
    a = 56;
    b = 56;
    ASSERT_EQ(a < b, false);

    // a < b
    a = 23;
    b = 1235;
    ASSERT_EQ(a < b, true);

    // a > b
    a = 2343564;
    b = 3;
    ASSERT_EQ(a < b, false);

}

// Operacja >=
TEST(CMP, IsGreaterOrEqual){

    NaturalBinary a;
    NaturalBinary b;

    // a == b
    a = 56;
    b = 56;
    ASSERT_EQ(a >= b, true);

    // a < b
    a = 23;
    b = 1235;
    ASSERT_EQ(a >= b, false);

    // a > b
    a = 2343564;
    b = 3;
    ASSERT_EQ(a >= b, true);

}

// Operacja <=
TEST(CMP, IsSmallerOrEqual){

    NaturalBinary a;
    NaturalBinary b;

    // a == b
    a = 56;
    b = 56;
    ASSERT_EQ(a <= b, true);

    // a < b
    a = 23;
    b = 1235;
    ASSERT_EQ(a <= b, true);

    // a > b
    a = 2343564;
    b = 3;
    ASSERT_EQ(a <= b, false);

}

// Entry point modułu testującego klasę Arithmetic
int main(int argc, char const *argv[])
{
    ::testing::InitGoogleTest();
    return RUN_ALL_TESTS();
}