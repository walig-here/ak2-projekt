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

// Entry point modułu testującego klasę Arithmetic
int main(int argc, char const *argv[])
{
    ::testing::InitGoogleTest();
    return RUN_ALL_TESTS();
}