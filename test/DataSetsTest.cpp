#include "gtest/gtest.h"
#include "Arithmetic.h"

// Stworzenie bajtu z liczby z dozwolonego zakresu (0 - 255)
TEST(TestByte, CreatingArgumentInRange){

    Byte byte;

    byte = 0x00;
    ASSERT_EQ(byte.value, 0x00);

    byte = 0x24;
    ASSERT_EQ(byte.value, 0x24);

    byte = 0x6C;
    ASSERT_EQ(byte.value, 0x6C);


    byte = 0xFF;
    ASSERT_EQ(byte.value, 0xFF);

}

// Stworzenie wyzerowanego bajtu za pomocą konstruktora domyślnego
TEST(TestByte, CreateZeroed){

    Byte byte;
    ASSERT_EQ(byte.value, 0x00);

}

// Stworzenie bajtu za pomocą liczby ujemnej
// Spodziewany wynik: wyzerowanie bajtu
TEST(TestByte, CreateNegativeArgument){

    Byte byte;

    // Najmniejsza stała long long
    byte = LLONG_MIN;
    ASSERT_EQ(byte.value, 0x00);

    // Najmniejsza stała long
    byte = LONG_MIN;
    ASSERT_EQ(byte.value, 0x00);

    // Najmniejsza stała int
    byte = INT_MIN;
    ASSERT_EQ(byte.value, 0x00);

    // Najmniejsza stała short
    byte = SHRT_MIN;
    ASSERT_EQ(byte.value, 0x00);

    // Najmniejsza stała char
    byte = CHAR_MIN;
    ASSERT_EQ(byte.value, 0x00);

}

// Stworzenie bajtu za pomocą liczby powyżej dozwolonego zakresu
// Spodziewany wynik: ustawienie bajtu na BYTE_MAX
TEST(TestByte, CreateArgumentOverMax){

    Byte byte;

    // Największa stała long long
    byte = ULLONG_MAX;
    ASSERT_EQ(byte.value, 0x00);

    // Największa stała long
    byte = ULONG_MAX;
    ASSERT_EQ(byte.value, 0x00);

    // Największa stała int
    byte = UINT_MAX;
    ASSERT_EQ(byte.value, 0x00);

    // Największa stała short
    byte = USHRT_MAX;
    ASSERT_EQ(byte.value, 0x00);

    // BYTE_MAX + 1
    byte = BYTE_MAX + 1;
    ASSERT_EQ(byte.value, 0x00);

}

//---------------------------------------------------------------------------------------------------------

// Stworzenie słowa z liczby z dozwolonego zakresu (0 - 65536)
TEST(TestWord, CreatingArgumentInRange){

    Word word;

    word = 0x0000;
    ASSERT_EQ(word.low_byte.value, 0x00);
    ASSERT_EQ(word.high_byte.value, 0x00);
    ASSERT_EQ(word.value(), 0x0000);

    word = 0x245A;
    ASSERT_EQ(word.low_byte.value, 0x5A);
    ASSERT_EQ(word.high_byte.value, 0x24);
    ASSERT_EQ(word.value(), 0x245A);

    word = 0x6CFF;
    ASSERT_EQ(word.low_byte.value, 0xFF);
    ASSERT_EQ(word.high_byte.value, 0x6C);
    ASSERT_EQ(word.value(), 0x6CFF);


    word = 0xFFFF;
    ASSERT_EQ(word.low_byte.value, 0xFF);
    ASSERT_EQ(word.high_byte.value, 0xFF);
    ASSERT_EQ(word.value(), 0xFFFF);

}

// Stworzenie wyzerowanego słowa za pomocą konstruktora domyślnego
TEST(TestWord, CreateZeroed){

    Word word;
    ASSERT_EQ(word.low_byte.value, 0x00);
    ASSERT_EQ(word.high_byte.value, 0x00);
    ASSERT_EQ(word.value(), 0x0000);

}

// Stworzenie słowa za pomocą liczby ujemnej
// Spodziewany wynik: wyzerowanie słowa
TEST(TestWord, CreateNegativeArgument){

    Word word;

    // Najmniejsza stała long long
    word = LLONG_MIN;
    ASSERT_EQ(word.low_byte.value, 0x00);
    ASSERT_EQ(word.high_byte.value, 0x00);
    ASSERT_EQ(word.value(), 0x0000);

    // Najmniejsza stała long
    word = LONG_MIN;
    ASSERT_EQ(word.low_byte.value, 0x00);
    ASSERT_EQ(word.high_byte.value, 0x00);
    ASSERT_EQ(word.value(), 0x0000);

    // Najmniejsza stała int
    word = INT_MIN;
    ASSERT_EQ(word.low_byte.value, 0x00);
    ASSERT_EQ(word.high_byte.value, 0x00);
    ASSERT_EQ(word.value(), 0x0000);

    // Najmniejsza stała short
    word = SHRT_MIN;
    ASSERT_EQ(word.low_byte.value, 0x00);
    ASSERT_EQ(word.high_byte.value, 0x00);
    ASSERT_EQ(word.value(), 0x0000);

    // Najmniejsza stała char
    word = CHAR_MIN;
    ASSERT_EQ(word.low_byte.value, 0x00);
    ASSERT_EQ(word.high_byte.value, 0x00);
    ASSERT_EQ(word.value(), 0x0000);

}

// Stworzenie słowa za pomocą liczby powyżej dozwolonego zakresu
// Spodziewany wynik: wyzerowanie słowa
TEST(TestWord, CreateArgumentOverMax){

    Word word;

    // Największa stała long long
    word = ULLONG_MAX;
    ASSERT_EQ(word.low_byte.value, 0x00);
    ASSERT_EQ(word.high_byte.value, 0x00);
    ASSERT_EQ(word.value(), 0x0000);

    // Największa stała long
    word = ULONG_MAX;
    ASSERT_EQ(word.low_byte.value, 0x00);
    ASSERT_EQ(word.high_byte.value, 0x00);
    ASSERT_EQ(word.value(), 0x0000);

    // Największa stała int
    word = UINT_MAX;
    ASSERT_EQ(word.low_byte.value, 0x00);
    ASSERT_EQ(word.high_byte.value, 0x00);
    ASSERT_EQ(word.value(), 0x0000);

    // BYTE_MAX + 1
    word = WORD_MAX + 1;
    ASSERT_EQ(word.low_byte.value, 0x00);
    ASSERT_EQ(word.high_byte.value, 0x00);
    ASSERT_EQ(word.value(), 0x0000);

}

// Entry point modułu testującego moduł DataSets
int main(int argc, char const *argv[])
{
    ::testing::InitGoogleTest();
    return RUN_ALL_TESTS();
}