#include <iostream>
#include "SignedMagnitude.h"
using namespace std;

int main() {

    SignedMagnitude a = 1; a.set_precission(5);
    SignedMagnitude b = 10;

    for(int i = 0; i < 5; i++) {
        a = a/b;
    }
    cout << a << endl;

    return 0;

}