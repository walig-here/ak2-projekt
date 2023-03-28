#include <iostream>
#include "SignedMagnitude.h"
using namespace std;

int main() {
    
    SignedMagnitude n = 256;
    cout << n.toString() << endl;
    cout << "Ujemna: " << ( n.getNegative() ? "tak" : "nie" ) << endl;

    return 0;
}