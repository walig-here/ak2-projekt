#include <iostream>
#include "SignedMagnitude.h"
using namespace std;

int main() {

    SignedMagnitude a = 333; a.set_precission(4);
    SignedMagnitude b = 20;
    cout << a << " / " << b << " = " << a/b << endl;

    return 0;

}