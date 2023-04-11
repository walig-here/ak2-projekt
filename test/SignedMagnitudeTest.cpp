
#include "gtest/gtest.h"
#include "SignedMagnitude.h"

//konwersja int na tablice bajtow


TEST(SignMagTest, convertFromIntToNB) {
    int value;

    value = 0;
    SignedMagnitude signedMagnitude_zero(value);
    ASSERT_EQ(signedMagnitude_zero.getByte().front().value, 0);
    ASSERT_EQ(signedMagnitude_zero.getNegative(), false);

    value = 260;
    SignedMagnitude signedMagnitude_five(value);
    ASSERT_EQ(signedMagnitude_five.getByte().back().value, 0x01);    //starszy bit
    ASSERT_EQ(signedMagnitude_five.getByte().front().value, 0x04);   //mlodszy bit
    ASSERT_EQ(signedMagnitude_five.getNegative(), false);


    value = -257;
    SignedMagnitude signedMagnitude_minus(value);
    ASSERT_EQ(signedMagnitude_minus.getByte().front().value, 1);
    ASSERT_EQ(signedMagnitude_minus.getByte().back().value, 1);
    ASSERT_EQ(signedMagnitude_minus.getNegative(), true);


}

TEST(sign_magni_huge_Test, convTabOfBytesToSignMagni) {

    list <Byte> input_tab_basic= {3, 2, 4, 6, 2};
    auto j = input_tab_basic.rbegin();
    SignedMagnitude signedMagnitude_basic(input_tab_basic, 1, false);
    ASSERT_EQ(signedMagnitude_basic.getNegative(), false);

    for (Byte byte: signedMagnitude_basic.getByte()) {
        ASSERT_EQ(byte.value, j->value);

        j++;
    }


    list <Byte> input_tab_empty = {};
    j = input_tab_empty.rbegin();

    SignedMagnitude signedMagnitude_empty(input_tab_empty, 1, true);
    ASSERT_EQ(signedMagnitude_empty.getNegative(), true);

    for (Byte byte: signedMagnitude_empty.getByte()) {
        ASSERT_EQ(byte.value, j->value);
        j++;
    }


}
//mnozenie/dziel liczb obu ujemnych, tej samej dlugosci
TEST(mul_sign_same_TEST, signOfMulMagni) {
    list<Byte> input_tab_basic = {3, 2, 4, 6, 2};
    SignedMagnitude signedMagnitude(input_tab_basic, 1, true);
    ASSERT_EQ(signedMagnitude.mulDivSign(SignedMagnitude(input_tab_basic, 1, true)), false);
}
//znak mnozenie/dziel liczb obu o roznych znakach, roznej dlugosci
TEST(mul_sign_dif_TEST, signOfMulMagni) {
    list<Byte> input_tab_basic = {3, 2, 4, 6, 2};
    list<Byte> another_input_tab_basic = {10, 3, 6, 1};
    SignedMagnitude signedMagnitude(input_tab_basic, 1, true);
    ASSERT_EQ(signedMagnitude.mulDivSign(SignedMagnitude(another_input_tab_basic, 1, false)), true);
}




// znak dodawania liczb z czego druga jest mniejsza i ujemna
TEST(add_sign_dif_TEST, signOfAddMagni) {
    list<Byte> input_tab_basic = {3, 2, 4, 6, 2};
    list<Byte> another_input_tab_basic = {10, 3, 6, 1};
    SignedMagnitude signedMagnitude(input_tab_basic, 1, false);
    ASSERT_EQ(signedMagnitude.addSign(SignedMagnitude(another_input_tab_basic, 1, true)), false);
}

// znak dodawania liczb obie rownej dlugosci ale jedna wieksza
TEST(add_sign_same_TEST, signOfAddMagni) {
    list<Byte> input_tab_basic = {3, 2, 4, 6, 2};
    list<Byte> another_input_tab_basic = {10, 3, 6, 1, 1};
    SignedMagnitude signedMagnitude(input_tab_basic, 1, false);
    ASSERT_EQ(signedMagnitude.addSign(SignedMagnitude(another_input_tab_basic, 1, true)), true);
}

// znak dodawania liczb obie rownej dlugosci obie rowne przez wiele cyfr
TEST(add_sign_same_one_TEST, signOfAddMagni) {
    list<Byte> input_tab_basic = {3, 2, 4, 6, 2};
    list<Byte> another_input_tab_basic = {3, 2, 6, 1, 4};
    SignedMagnitude signedMagnitude(input_tab_basic, 1, false);
    ASSERT_EQ(signedMagnitude.addSign(SignedMagnitude(another_input_tab_basic, 1, true)), true);
}

TEST(add_sign_same_equal_TEST, signOfAddMagni) {
    list<Byte> input_tab_basic = {3, 2, 4, 6, 2};
    list<Byte> another_input_tab_basic = {3, 2, 4, 6, 2};
    SignedMagnitude signedMagnitude(input_tab_basic, 1, false);
    ASSERT_EQ(signedMagnitude.addSign(SignedMagnitude(another_input_tab_basic, 1, true)), false);
}





// znak odejmowania liczb z czego druga(odjemnik) jest mniejsza i ujemna
TEST(sub_sign_dif_TEST, signOfSubMagni) {
    list<Byte> input_tab_basic = {3, 2, 4, 6, 2};
    list<Byte> another_input_tab_basic = {10, 3, 6, 1};
    SignedMagnitude signedMagnitude(input_tab_basic, 1, false);
    ASSERT_EQ(signedMagnitude.subSign(SignedMagnitude(another_input_tab_basic, 1, true)), false);
}

// znak odejm liczb obie rownej dlugosci ale odjemnik wieksza
TEST(sub_sign_same_TEST, signOfSubMagni) {
    list<Byte> input_tab_basic = {3, 2, 4, 6, 2};
    list<Byte> another_input_tab_basic = {10, 3, 6, 1, 1};
    SignedMagnitude signedMagnitude(input_tab_basic, 1, false);
    ASSERT_EQ(signedMagnitude.subSign(SignedMagnitude(another_input_tab_basic, 1, true)), false);
}

// znak odejm liczb obie rownej dlugosci obie rowne przez wiele cyfr
TEST(sub_sign_same_one_TEST, signOfSubMagni) {
    list<Byte> input_tab_basic = {3, 2, 4, 6, 2};
    list<Byte> another_input_tab_basic = {3, 2, 6, 1, 4};
    SignedMagnitude signedMagnitude(input_tab_basic, 1, false);
    ASSERT_EQ(signedMagnitude.subSign(SignedMagnitude(another_input_tab_basic, 1, false)), true);
}

TEST(sub_sign_same_equal_TEST, signOfSubMagni) {
    list<Byte> input_tab_basic = {3, 2, 4, 6, 2};
    list<Byte> another_input_tab_basic = {3, 2, 4, 6, 2};
    SignedMagnitude signedMagnitude(input_tab_basic, 1, false);
    ASSERT_EQ(signedMagnitude.subSign(SignedMagnitude(another_input_tab_basic, 1, false)), false);
}


int main(int argc, char const *argv[]) {
    ::testing::InitGoogleTest();
    return RUN_ALL_TESTS();
}

