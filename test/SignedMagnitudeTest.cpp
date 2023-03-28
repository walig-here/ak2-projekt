
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
    ASSERT_EQ(signedMagnitude_five.getByte().back().value, 1);    //starszy bit
    ASSERT_EQ(signedMagnitude_five.getByte().front().value, 4);   //mlodszy bit
    ASSERT_EQ(signedMagnitude_five.getNegative(), false);


    value = -257;
    SignedMagnitude signedMagnitude_minus(value);
    ASSERT_EQ(signedMagnitude_minus.getByte().back().value, 1);
    ASSERT_EQ(signedMagnitude_minus.getByte().front().value, 1);
    ASSERT_EQ(signedMagnitude_minus.getNegative(), true);


}

TEST(sign_magni_huge_Test, convTabOfBytesToSignMagni) {

    list <Byte> input_tab_basic= {3, 2, 4, 6, 2};
    auto j = input_tab_basic.begin();
    SignedMagnitude signedMagnitude_basic(input_tab_basic, 1, false);
    ASSERT_EQ(signedMagnitude_basic.getNegative(), false);

    for (Byte byte: signedMagnitude_basic.getByte()) {
        ASSERT_EQ(byte.value, j->value);

        j++;
    }



    list <Byte> input_tab_empty = {};
    j = input_tab_empty.begin();

    SignedMagnitude signedMagnitude_empty(input_tab_empty, 1, true);
    ASSERT_EQ(signedMagnitude_empty.getNegative(), true);

    for (Byte byte: signedMagnitude_empty.getByte()) {
        ASSERT_EQ(byte.value, j->value);
        j++;
    }


}


int main(int argc, char const *argv[]) {
    ::testing::InitGoogleTest();
    return RUN_ALL_TESTS();
}

