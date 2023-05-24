
#include "gtest/gtest.h"
#include "SignedMagnitude.h"

//konwersja int na tablice bajtow


TEST(SignMagTest, convertFromIntToNB) {
    int value;

    value = 0;
    SignedMagnitude signedMagnitude_zero(value);
    ASSERT_EQ(signedMagnitude_zero.toString(), "0x00");

    value = 260;
    SignedMagnitude signedMagnitude_five(value);
    ASSERT_EQ(signedMagnitude_five.toString(), "0x0104");


    value = -257;
    SignedMagnitude signedMagnitude_minus(value);
    ASSERT_EQ(signedMagnitude_minus.toString(), "-0x0101");


}

TEST(sign_magni_huge_Test, convTabOfBytesToSignMagni) {

    SignedMagnitude a({3, 2, 4, 6, 2}, 1, false);
    ASSERT_EQ(a.toString(), "0x03020406.02");

}

// Skalowanie
TEST(Align, AlignToLongerAndMorePrecise){

    SignedMagnitude a({49, 149}, 1, false);
    SignedMagnitude b({215, 73, 151, 16, 193, 250, 234, 114, 194, 1}, 7, false);

    ASSERT_EQ(a.alignModuleWith(b).toString(), "0x00003195000000000000");

}


TEST(Align, AlignToShorterAndLessPRecise){

    SignedMagnitude a({35, 128, 249}, 1, false);
    SignedMagnitude b({248}, 0, false);

    ASSERT_EQ(a.alignModuleWith(b).toString(), "0x2380f9");

}

// Dodawanie dwóch równych liczb dodatnich
TEST(Add, EqualPositiveNumbers){

    SignedMagnitude a({0xda, 0x92, 0xc8, 0xd4, 0x37, 0x1a, 0x0b, 0xd1, 0x95, 0x28, 06, 0xef, 0xa5, 0x86, 0x52, 0x6f}, 3, false);

    ASSERT_EQ((a+a).toString(), "0x01b52591a86e3417a32a500ddf4b.0ca4de");

}


// Dodanie dwóch liczb całkowitych, ale |A| > |B|
TEST(Add, PositiveNumbersAGreaterThanB){

    SignedMagnitude a({0xda, 0x92, 0xc8, 0xd4, 0x37, 0x1a, 0x0b, 0xd1, 0x95, 0x28, 0x06, 0xef, 0xa5, 0x86, 0x52, 0x6f}, 0, false);
    SignedMagnitude b({0x61, 0x30, 0x20, 0x9d, 0xf3, 0xd3, 0xa7, 0x26, 0xb2, 0x50, 0x51, 0x10, 0xe0, 0xf3, 0xa3, 0xc9}, 13, false);

    ASSERT_EQ((a+b).toString(), "0xda92c8d4371a0bd1952806efa5e7828f.9df3d3a726b2505110e0f3a3c9");

}

// Dodanie dwóch dużych liczb całkowitych, ale |A| > |B|
TEST(Add, HugePositiveNumbersAGreaterThanB){

    SignedMagnitude a({0x09, 0x5E, 0x4A, 0x7C, 0x3B, 0x82, 0x2F, 0x17, 0x68, 0x92, 0xAF, 0x3D, 0x55, 0x76, 0x20, 0xBA, 0xE1, 0x4F, 0x8D, 0xC6}, 0, false);
    SignedMagnitude b({0x4B, 0x8A, 0x2F, 0x5C, 0x91, 0x76, 0x3D, 0x68, 0x1F, 0x7E, 0x59, 0x2A, 0x43, 0x85, 0x6E, 0x9B, 0xAF, 0x17, 0xC2, 0x37}, 13, false);

    ASSERT_EQ((a+b).toString(), "0x095e4a7c3b822f176892af3d55c1aaea3de10403.681f7e592a43856e9baf17c237");

}


// Dodanie dwóch liczb całkowitych, ale |A| < |B|
TEST(Add, PositiveNumbersASmallerThanB){

    SignedMagnitude a({0x80, 0x5f, 0x2c, 0xf4, 0xc9, 0xdc, 0x60, 0xee, 0x21, 0x1c, 0x10, 0xb6, 0x14, 0xe2, 0xec, 0x6e}, 6, false);
    SignedMagnitude b({0xfe, 0xa6, 0x71, 0xa0, 0xc0, 0x11, 0xaf, 0xb7, 0xcb, 0xad, 0x05, 0x97, 0x97, 0x2b, 0x21, 0x39}, 15, false);

    ASSERT_EQ((a+b).toString(), "0x805f2cf4c9dc60ee221a.b727b5a2fe1db7cbad0597972b2139");

}

// Dodawanie dodatiego A oraz ujemnego B, A = B
TEST(Add, PositiveANegativeBEqual){

    SignedMagnitude a({0x9c, 0xc7, 0xb8, 0x24, 0xff, 0x24, 0xdb, 0x88, 0x1f, 0xbd, 0xa7, 0x9d, 0x4a, 0xd8, 0x77, 0xf5}, 14, false);
    SignedMagnitude b({0x9c, 0xc7, 0xb8, 0x24, 0xff, 0x24, 0xdb, 0x88, 0x1f, 0xbd, 0xa7, 0x9d, 0x4a, 0xd8, 0x77, 0xf5}, 14, true);

    ASSERT_EQ((a+b).toString(), "0x00");

}

// Dodawanie dodatniego A oraz ujemnego B, A > B
TEST(Add, PositiveANegativeB_AGreaterThanB){

    SignedMagnitude a({0x9c, 0xee, 0xcc, 0x4f, 0xf7, 0x85, 0xc3, 0x78, 0x32, 0xc9, 0x97, 0x89, 0xe0, 0x27, 0x31, 0xc7}, 6, false);
    SignedMagnitude b({0x03, 0x12, 0x8c, 0xe9, 0x27, 0x05, 0x75, 0x01, 0xc3, 0xb5, 0x05, 0x38, 0xf5, 0x15, 0x4f, 0x02}, 10, true);

    ASSERT_EQ((a+b).toString(), "0x9ceecc4ff473368f0bc4.22881c722c8e0aeab0fe");

}

// Dodawanie dodatniego A oraz ujemnego B, A < B
TEST(Add, PositiveANegativeB_ASmallerThanB){

    SignedMagnitude a({0x54, 0xfc, 0xf3, 0x97, 0x63, 0x99, 0xd3, 0x28, 0x8f, 0x1a, 0x6e, 0xdc, 0x2d, 0x6b, 0x27, 0x10}, 11, false);
    SignedMagnitude b({0xbf, 0xea, 0x4f, 0x11, 0x10, 0x37, 0x61, 0xec, 0xf4, 0x7e, 0x68, 0x91, 0xba, 0xb1, 0x92, 0xc4}, 0, true);

    ASSERT_EQ((a+b).toString(), "-0xbfea4f11103761ecf47e683cbdbdfb60.662cd770e59123d294d8f0");

}

// Dodawanie ujemnego A oraz dodatniego B, A = B
TEST(Add, NegativeAPositiveB_Equal){

    SignedMagnitude a({0x63, 0xe7, 0xc3, 0xa6, 0xc2, 0x26, 0x08, 0x9c, 0x25, 0xc7, 0xed, 0x07, 0x39, 0x39, 0x0c, 0x52}, 6, true);
    SignedMagnitude b({0x63, 0xe7, 0xc3, 0xa6, 0xc2, 0x26, 0x08, 0x9c, 0x25, 0xc7, 0xed, 0x07, 0x39, 0x39, 0x0c, 0x52}, 6, false);

    ASSERT_EQ((a+b).toString(), "0x00");

}

// Dodawanie ujemnego A oraz dodatniego B, A > B
TEST(Add, NegativeAPositiveB_AGreaterThanB){

    SignedMagnitude a({0x59, 0x9e, 0xa2, 0xfc, 0x36, 0xe7, 0x7b, 0x27, 0xdf, 0x06, 0xb3, 0xef, 0x0d, 0xa5, 0x7e, 0x91}, 5, true);
    SignedMagnitude b({0x6f, 0x03, 0x84, 0x41, 0x9a, 0xdd, 0x6d, 0x7a, 0x04, 0x6c, 0x8a, 0x76, 0xbb, 0x76, 0xf5, 0x43}, 15, false);

    ASSERT_EQ((a+b).toString(), "-0x599ea2fc36e77b27df0644.eb8963e3b39285fb93758944890abd");

}

// Dodawanie ujemnego A oraz dodatniego B, A < B
TEST(Add, NegativeAPositiveB_ASmallerThanB){

    SignedMagnitude a({0xd5, 0x03, 0x56, 0xb2, 0x2a, 0xd9, 0x5b, 0xc8, 0x50, 0x1a, 0x8b, 0x70, 0x8e, 0x7c, 0xdd, 0x78}, 3, true);
    SignedMagnitude b({0x8a, 0xab, 0xe3, 0xde, 0xc6, 0xb5, 0xfe, 0x27, 0xd1, 0x29, 0x81, 0xd1, 0x8f, 0x9b, 0xca, 0x0b}, 1, false);

    ASSERT_EQ((a+b).toString(), "0x8aab0edb7003d34e756131b7042b3b.8e2288");

}

// Dodawanie ujemnych A i B, A == B
TEST(Add, NegativeNumbers_Equal){

    SignedMagnitude a({0x43, 0x29, 0xcd, 0x44, 0x4b, 0x49, 0xb0, 0x55, 0x0a, 0x0d, 0xf0, 0x30, 0xc7, 0x7a, 0xc1, 0xe7}, 5, true);

    ASSERT_EQ((a+a).toString(), "-0x86539a88969360aa141be0.618ef583ce");

}

// Dodawanie ujemnych A i B, A > B
TEST(Add, NegativeNumbers_AGreaterThanB){

    SignedMagnitude a({0x97, 0x8d, 0x00, 0x08, 0xe1, 0x56, 0xd7, 0x68, 0x49, 0x5e, 0x20, 0x04, 0xcc, 0xce, 0x0b, 0x9a}, 2, true);
    SignedMagnitude b({0x80, 0xae, 0x00, 0xdb, 0xda, 0xc1, 0xe9, 0x59, 0xce, 0x22, 0x28, 0x45, 0xf6, 0x8e, 0x71, 0xc5}, 8, true);

    ASSERT_EQ((a+b).toString(), "-0x978d0008e15758164a39fac6b627.d9bc2845f68e71c5");

}

// Dodawanie ujemnych A i B, A < B
TEST(Add, NegativeNumbers_ASmallerThanB){

    SignedMagnitude a({0x75, 0xb4, 0xc1, 0x8b, 0xd0, 0x3a, 0x26, 0x75, 0x34, 0xbc, 0xe1, 0x56, 0xfc, 0x29, 0x00, 0xc3}, 6, true);
    SignedMagnitude b({0xef, 0x60, 0x59, 0x2f, 0x03, 0x19, 0xf2, 0x9e, 0x1c, 0x5c, 0x47, 0x79, 0x3a, 0x3f, 0xc4, 0x5c}, 5, true);

    ASSERT_EQ((a+b).toString(), "-0xefd60df08eea2cc4919104.5a913bed5cc3");

}

// ========================================================================================================================================

// Odejmowanie dodatnich A i B, A = B
TEST(Subtract, PositiveNumbers_Equal){

    SignedMagnitude a({0xbf, 0x46, 0xb2, 0x64, 0xf4, 0x16, 0xfb, 0x9d, 0x2f, 0x62, 0x40, 0xae, 0x50, 0x40, 0x17, 0xbb}, 3, false);

    ASSERT_EQ((a-a).toString(), "0x00");

}

// Odejmowanie dodatnich A i B, A > B
TEST(Subtract, PositiveNumbers_AGreaterThanB){

    SignedMagnitude a({0x60, 0x9f, 0x3b, 0x06, 0x65, 0x77, 0x18, 0xab, 0x5a, 0x82, 0x27, 0x75, 0x7f, 0x0a, 0x89, 0xf3}, 6, false);
    SignedMagnitude b({0x1f, 0x68, 0x79, 0x1b, 0x50, 0xfa, 0x4e, 0x74, 0x54, 0xb6, 0xde, 0x02, 0x84, 0xdf, 0xff, 0xc2}, 11, false);

    ASSERT_EQ((a-b).toString(), "0x609f3b066557b0323f31.2d270ab5d314fd7b20003e");

}

// Odejmowanie dodatnich A i B, A < B
TEST(Subtract, PositiveNumbers_ASmallerThanB){

    SignedMagnitude a({0x36, 0xf3, 0x3d, 0xcb, 0x83, 0x11, 0x2f, 0x30, 0x85, 0xaf, 0xeb, 0xe6, 0x78, 0xcb, 0x03, 0x1d}, 8, false);
    SignedMagnitude b({0x72, 0x9c, 0xde, 0x39, 0xf8, 0x8b, 0x4c, 0x6f, 0x7a, 0x97, 0xe8, 0x0b, 0xd1, 0xeb, 0x05, 0xe2}, 3, false);

    ASSERT_EQ((a-b).toString(), "-0x729cde39f8545931af14d6dca1.6555f6198734fce3");

}

// ========================================================================================================================================

TEST(Multiply, PositiveNumbers){

    SignedMagnitude a({0xe0, 0x5e, 0x17, 0xf9, 0xbe, 0x60, 0x89, 0xa9, 0xe9, 0x50, 0x68, 0x31, 0x12, 0xa7, 0x45, 0x13}, 6, false);
    SignedMagnitude b({0x34, 0x66, 0xec, 0x59, 0x98, 0xb6, 0xf1, 0x7c, 0xcc, 0x06, 0xa0, 0xdc, 0x34, 0xae, 0x15, 0xdd}, 2, false);

    ASSERT_EQ((a*b).toString(), "0x2ded51818cd63c88d51cf836f39be476fceb01698c4cfaa2.2177dcf1a1fb3067");

}

// ========================================================================================================================================

TEST(Divide, PositiveNumbers){

    // 1 -bajtowe
    SignedMagnitude a({0x01}, 0, false);
    SignedMagnitude b({0x39}, 0, false);
    ASSERT_EQ((a/b).toString(), "0x00");

    
    a = SignedMagnitude({0x5e, 0x2c}, 0, false);
    b = SignedMagnitude({0x16, 0x54}, 1, false);
    ASSERT_EQ((a/b).toString(), "0x0437");

    
    a = SignedMagnitude({0x14, 0x5c, 0x5f, 0x6f}, 1, false);
    b = SignedMagnitude({0x14, 0xf9, 0x95}, 0, false);
    ASSERT_EQ((a/b).toString(), "0x00.f8");


    a = SignedMagnitude({0xf0, 0x38, 0xa6, 0x57, 0xe3}, 4, false);
    b = SignedMagnitude({0x07, 0x68}, 1, false);
    ASSERT_EQ((a/b).toString(), "0x20.6f5859a3");

}

TEST(Divide, NegativeNumbers){

    // 1 -bajtowe
    SignedMagnitude a({0x01}, 0, true);
    SignedMagnitude b({0x39}, 0, true);
    ASSERT_EQ((a/b).toString(), "0x00");

    
    a = SignedMagnitude({0x5e, 0x2c}, 0, true);
    b = SignedMagnitude({0x16, 0x54}, 1, true);
    ASSERT_EQ((a/b).toString(), "0x0437");

    
    a = SignedMagnitude({0x14, 0x5c, 0x5f, 0x6f}, 1, true);
    b = SignedMagnitude({0x14, 0xf9, 0x95}, 0, true);
    ASSERT_EQ((a/b).toString(), "0x00.f8");


    a = SignedMagnitude({0xf0, 0x38, 0xa6, 0x57, 0xe3}, 4, true);
    b = SignedMagnitude({0x07, 0x68}, 1, true);
    ASSERT_EQ((a/b).toString(), "0x20.6f5859a3");

}

TEST(Divide, MixedSign){

    // 1 -bajtowe
    SignedMagnitude a({0x01}, 0, true);
    SignedMagnitude b({0x39}, 0, false);
    ASSERT_EQ((a/b).toString(), "0x00");

    
    a = SignedMagnitude({0x5e, 0x2c}, 0, false);
    b = SignedMagnitude({0x16, 0x54}, 1, true);
    ASSERT_EQ((a/b).toString(), "-0x0437");

    
    a = SignedMagnitude({0x14, 0x5c, 0x5f, 0x6f}, 1, true);
    b = SignedMagnitude({0x14, 0xf9, 0x95}, 0, false);
    ASSERT_EQ((a/b).toString(), "-0x00.f8");


    a = SignedMagnitude({0xf0, 0x38, 0xa6, 0x57, 0xe3}, 4, false);
    b = SignedMagnitude({0x07, 0x68}, 1, true);
    ASSERT_EQ((a/b).toString(), "-0x20.6f5859a3");

}

// ========================================================================================================================================

TEST(SetPrecission, IncreasePrecission){

    SignedMagnitude a = 0x32;
    a.set_precission(5);
    ASSERT_EQ(a.toString(), "0x32.0000000000");

}

TEST(SetPrecission, DecreasePrecission){

    SignedMagnitude a({0x45, 0x67, 0x68, 0x23, 0x11, 0x48}, 5, true);
    a.set_precission(1);
    ASSERT_EQ(a.toString(), "-0x45.67");

}

TEST(SetPrecission, SetSamePrecission){

    SignedMagnitude a({0x45, 0x67, 0x68, 0x23, 0x11, 0x48}, 5, true);
    a.set_precission(5);
    ASSERT_EQ(a.toString(), "-0x45.6768231148");

}

// ========================================================================================================================================

// A == B, obie dodatnie
TEST(Compare, EqualBothPositive){

    SignedMagnitude a;
    SignedMagnitude b;

    // a = b
    a = 45; a.set_precission(11);
    b = 45; b.set_precission(3);
    ASSERT_EQ(a == b, true);

    // a > b
    a = 123; a.set_precission(94);
    b = 45; b.set_precission(37);
    ASSERT_EQ(a == b, false);

    // a < b
    a = 11; a.set_precission(95);
    b = 456467; b.set_precission(50);
    ASSERT_EQ(a == b, false);

}

// A == B, jedna ujemna
TEST(Compare, EqualOneNegative){

    SignedMagnitude a;
    SignedMagnitude b;

    a = 45; a.set_precission(11);
    b = -45; b.set_precission(3);
    ASSERT_EQ(a == b, false);

    a = -123; a.set_precission(94);
    b = 45; b.set_precission(37);
    ASSERT_EQ(a == b, false);

    a = 11; a.set_precission(95);
    b = -456467; b.set_precission(50);
    ASSERT_EQ(a == b, false);

}

// A == B, obie ujemne
TEST(Compare, EqualBothNegative){

    SignedMagnitude a;
    SignedMagnitude b;

    a = -45; a.set_precission(11);
    b = -45; b.set_precission(3);
    ASSERT_EQ(a == b, true);

    a = -123; a.set_precission(94);
    b = -45; b.set_precission(37);
    ASSERT_EQ(a == b, false);

    a = -11; a.set_precission(95);
    b = -456467; b.set_precission(50);
    ASSERT_EQ(a == b, false);

}

// A < B, obie dodatnie
TEST(Compare, ALessThanB_BothPositive){

    SignedMagnitude a;
    SignedMagnitude b;

    // a = b
    a = 45; a.set_precission(11);
    b = 45; b.set_precission(3);
    ASSERT_EQ(a < b, false);

    // a > b
    a = 123; a.set_precission(94);
    b = 45; b.set_precission(37);
    ASSERT_EQ(a < b, false);

    // a < b
    a = 11; a.set_precission(95);
    b = 456467; b.set_precission(50);
    ASSERT_EQ(a < b, true);

}

// A < B, jedna ujmena
TEST(Compare, ALessThanB_OneNegative){

    SignedMagnitude a;
    SignedMagnitude b;

    a = 45; a.set_precission(11);
    b = -45; b.set_precission(3);
    ASSERT_EQ(a < b, false);

    a = 123; a.set_precission(94);
    b = -45; b.set_precission(37);
    ASSERT_EQ(a < b, false);

    a = -11; a.set_precission(95);
    b = 456467; b.set_precission(50);
    ASSERT_EQ(a < b, true);

}

// A < B, obie ujmene
TEST(Compare, ALessThanB_BothNegative){

    SignedMagnitude a;
    SignedMagnitude b;

    a = -45; a.set_precission(11);
    b = -45; b.set_precission(3);
    ASSERT_EQ(a < b, false);

    a = -123; a.set_precission(94);
    b = -45; b.set_precission(37);
    ASSERT_EQ(a < b, true);

    a = -11; a.set_precission(95);
    b = -456467; b.set_precission(50);
    ASSERT_EQ(a < b, false);

}

// A > B, obie dodatnie
TEST(Compare, AGreaterThanB_BothPositive){

    SignedMagnitude a;
    SignedMagnitude b;

    // a = b
    a = 45; a.set_precission(11);
    b = 45; b.set_precission(3);
    ASSERT_EQ(a > b, false);

    // a > b
    a = 123; a.set_precission(94);
    b = 45; b.set_precission(37);
    ASSERT_EQ(a > b, true);

    // a < b
    a = 11; a.set_precission(95);
    b = 456467; b.set_precission(50);
    ASSERT_EQ(a > b, false);

}

// A > B, jedna ujmena
TEST(Compare, AGreaterThanB_OneNegative){

    SignedMagnitude a;
    SignedMagnitude b;

    a = 45; a.set_precission(11);
    b = -45; b.set_precission(3);
    ASSERT_EQ(a > b, true);

    a = 123; a.set_precission(94);
    b = -45; b.set_precission(37);
    ASSERT_EQ(a > b, true);

    a = -11; a.set_precission(95);
    b = 456467; b.set_precission(50);
    ASSERT_EQ(a > b, false);

}

// A > B, obie ujmene
TEST(Compare, AGreaterThanB_BothNegative){

    SignedMagnitude a;
    SignedMagnitude b;

    a = -45; a.set_precission(11);
    b = -45; b.set_precission(3);
    ASSERT_EQ(a > b, false);

    a = -123; a.set_precission(94);
    b = -45; b.set_precission(37);
    ASSERT_EQ(a > b, false);

    a = -11; a.set_precission(95);
    b = -456467; b.set_precission(50);
    ASSERT_EQ(a > b, true);

}

// A >= B, obie dodatnie
TEST(Compare, AGreaterEqualB_BothPositive){

    SignedMagnitude a;
    SignedMagnitude b;

    // a = b
    a = 45; a.set_precission(11);
    b = 45; b.set_precission(3);
    ASSERT_EQ(a >= b, true);

    // a > b
    a = 123; a.set_precission(94);
    b = 45; b.set_precission(37);
    ASSERT_EQ(a >= b, true);

    // a < b
    a = 11; a.set_precission(95);
    b = 456467; b.set_precission(50);
    ASSERT_EQ(a >= b, false);

}

// A >= B, jedna ujemna
TEST(Compare, AGreaterEqualB_OneNegative){

    SignedMagnitude a;
    SignedMagnitude b;

    a = -45; a.set_precission(11);
    b = 45; b.set_precission(3);
    ASSERT_EQ(a >= b, false);

    a = 123; a.set_precission(94);
    b = -45; b.set_precission(37);
    ASSERT_EQ(a >= b, true);

    a = 11; a.set_precission(95);
    b = -456467; b.set_precission(50);
    ASSERT_EQ(a >= b, true);

}

// A >= B, obie ujemne
TEST(Compare, AGreaterEqualB_BothNegative){

    SignedMagnitude a;
    SignedMagnitude b;

    a = -45; a.set_precission(11);
    b = -45; b.set_precission(3);
    ASSERT_EQ(a >= b, true);

    a = -123; a.set_precission(94);
    b = -45; b.set_precission(37);
    ASSERT_EQ(a >= b, false);

    a = -11; a.set_precission(95);
    b = -456467; b.set_precission(50);
    ASSERT_EQ(a >= b, true);

}

// A <= B, obie dodatnie
TEST(Compare, ALessEqualB_BothPositive){

    SignedMagnitude a;
    SignedMagnitude b;

    // a = b
    a = 45; a.set_precission(11);
    b = 45; b.set_precission(3);
    ASSERT_EQ(a <= b, true);

    // a > b
    a = 123; a.set_precission(94);
    b = 45; b.set_precission(37);
    ASSERT_EQ(a <= b, false);

    // a < b
    a = 11; a.set_precission(95);
    b = 456467; b.set_precission(50);
    ASSERT_EQ(a <= b, true);

}

// A <= B, jedna ujemna
TEST(Compare, ALessEqualB_OneNegative){

    SignedMagnitude a;
    SignedMagnitude b;

    // a = b
    a = 45; a.set_precission(11);
    b = -45; b.set_precission(3);
    ASSERT_EQ(a <= b, false);

    // a > b
    a = -123; a.set_precission(94);
    b = 45; b.set_precission(37);
    ASSERT_EQ(a <= b, true);

    // a < b
    a = -11; a.set_precission(95);
    b = 456467; b.set_precission(50);
    ASSERT_EQ(a <= b, true);

}

// A <= B, obie ujemne
TEST(Compare, ALessEqualB_BothNegative){

    SignedMagnitude a;
    SignedMagnitude b;

    // a = b
    a = -45; a.set_precission(11);
    b = -45; b.set_precission(3);
    ASSERT_EQ(a <= b, true);

    // a > b
    a = -123; a.set_precission(94);
    b = -45; b.set_precission(37);
    ASSERT_EQ(a <= b, true);

    // a < b
    a = -11; a.set_precission(95);
    b = -456467; b.set_precission(50);
    ASSERT_EQ(a <= b, false);

}

int main(int argc, char const *argv[]) {
    ::testing::InitGoogleTest();
    return RUN_ALL_TESTS();
}

