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
    ASSERT_THROW(byte = LLONG_MIN, std::invalid_argument);

    // Najmniejsza stała long
    ASSERT_THROW(byte = LONG_MIN, std::invalid_argument);

    // Najmniejsza stała int
    ASSERT_THROW(byte = INT_MIN, std::invalid_argument);

    // Najmniejsza stała short
    ASSERT_THROW(byte = SHRT_MIN, std::invalid_argument);

    // Najmniejsza stała char
    ASSERT_THROW(byte = CHAR_MIN, std::invalid_argument);

}

// Stworzenie bajtu za pomocą liczby powyżej dozwolonego zakresu
// Spodziewany wynik: ustawienie bajtu na BYTE_MAX
TEST(TestByte, CreateArgumentOverMax){

    Byte byte;

    // Największa stała long long
    ASSERT_THROW(byte = ULLONG_MAX, std::invalid_argument);

    // Największa stała long
    ASSERT_THROW(byte = ULONG_MAX, std::invalid_argument);

    // Największa stała int
    ASSERT_THROW(byte = UINT_MAX, std::invalid_argument);

    // Największa stała short
    ASSERT_THROW(byte = USHRT_MAX, std::invalid_argument);

    // BYTE_MAX + 1
    ASSERT_THROW(byte = BYTE_MAX + 1, std::invalid_argument);

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
    ASSERT_THROW(word = LLONG_MIN, std::invalid_argument);

    // Najmniejsza stała long
    ASSERT_THROW(word = LONG_MIN, std::invalid_argument);

    // Najmniejsza stała int
    ASSERT_THROW(word = INT_MIN, std::invalid_argument);

    // Najmniejsza stała short
    ASSERT_THROW(word = SHRT_MIN, std::invalid_argument);

    // Najmniejsza stała char
    ASSERT_THROW(word = CHAR_MIN, std::invalid_argument);

}

// Stworzenie słowa za pomocą liczby powyżej dozwolonego zakresu
// Spodziewany wynik: wyzerowanie słowa
TEST(TestWord, CreateArgumentOverMax){

    Word word;

    // Największa stała long long
    ASSERT_THROW(word = ULLONG_MAX, std::invalid_argument);

    // Największa stała long
    ASSERT_THROW(word = ULONG_MAX, std::invalid_argument);

    // Największa stała int
    ASSERT_THROW(word = UINT_MAX, std::invalid_argument);

    // BYTE_MAX + 1
    ASSERT_THROW(word = WORD_MAX + 1, std::invalid_argument);

}

// Entry point modułu testującego klasę Arithmetic
int main(int argc, char const *argv[])
{
    ::testing::InitGoogleTest();
    return RUN_ALL_TESTS();
}
