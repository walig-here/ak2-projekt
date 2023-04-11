#include <iostream>
#include "SignedMagnitude.h"
using namespace std;

int main() {
    
    // DZIAŁANIE NATURAL BINARY
    NaturalBinary a = 12;
    NaturalBinary b = 5;

    cout << a << " + " << b << " = " << a+b << endl;
    cout << a << " - " << b << " = " << a-b << endl;
    cout << a << " * " << b << " = " << a*b << endl;
    cout << a << " / " << b << " = " << a/b << endl;

    // WYZNACZENIE ZNAKU W ZM
    SignedMagnitude x = 6;
    SignedMagnitude y = -3;

    cout << "sng(" << x.toString() << " + " << y.toString() << ") = " << ( x.addSign(y) ? "-1" : "1" ) << endl;
    cout << "sng(" << x.toString() << " - " << y.toString() << ") = " << ( x.subSign(y) ? "-1" : "1" ) << endl;
    cout << "sng(" << x.toString() << " * " << y.toString() << ") = " << ( x.mulDivSign(y) ? "-1" : "1" ) << endl;
    cout << "sng(" << x.toString() << " / " << y.toString() << ") = " << ( x.mulDivSign(y) ? "-1" : "1" ) << endl;

    return 0;

}