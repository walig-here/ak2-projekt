#include <iostream>
#include "SignedMagnitude.h"
using namespace std;

int main() {

    SignedMagnitude a = 56; a.set_precission(1);
    SignedMagnitude b = 5;
    
    cout << a / b << endl;

    return 0;

}