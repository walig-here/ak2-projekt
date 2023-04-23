#include <iostream>
#include "SignedMagnitude.h"
using namespace std;

int main() {

    SignedMagnitude a = 24; a.set_precission(12);
    SignedMagnitude b = 20;

    a = (a+b) / (a*b);
    a.set_precission(6);
    
    cout << a << endl;

    return 0;

}