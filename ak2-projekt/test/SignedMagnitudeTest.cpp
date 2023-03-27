
#include "gtest/gtest.h"
#include "SignedMagnitude.h"

//konwersja int na tablice bajtow


TEST(SignMagTest, convertFromIntToNB)
{
    int value;

    value = 0;
    SignedMagnitude signedMagnitude_zero(value);
    ASSERT_EQ(signedMagnitude_zero.getByte().front().value , 0);
    ASSERT_EQ(signedMagnitude_zero.getNegative(), false);

    value = 260;
    SignedMagnitude signedMagnitude_five(value);
    ASSERT_EQ(signedMagnitude_five.getByte().back().value , 1);    //starszy bit
    ASSERT_EQ(signedMagnitude_five.getByte().front().value , 4);   //mlodszy bit
    ASSERT_EQ(signedMagnitude_five.getNegative(), false);


    value = -257;
    SignedMagnitude signedMagnitude_minus(value);
    ASSERT_EQ(signedMagnitude_minus.getByte().back().value , 1);
    ASSERT_EQ(signedMagnitude_minus.getByte().front().value , 1);
    ASSERT_EQ(signedMagnitude_minus.getNegative(), true);


}




int main(int argc, char const *argv[])
{
    ::testing::InitGoogleTest();
    return RUN_ALL_TESTS();
}

