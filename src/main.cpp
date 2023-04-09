#include <iostream>
#include "SignedMagnitude.h"
using namespace std;

int main() {
    
    NaturalBinary a = 6;
    NaturalBinary b = 3;
    cout << (a+b)/b + (NaturalBinary)8%b << endl;
    return 0;

}