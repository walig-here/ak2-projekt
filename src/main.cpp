#include <iostream>
#include "SignedMagnitude.h"
using namespace std;

int main() {

    SignedMagnitude a = 1;
    SignedMagnitude b = 3;

    for(int i = 0; i < 1000; i++) {
        a = a*b;
    }
    cout << a << endl;

    return 0;

}