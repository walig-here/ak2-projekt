#include <list>
#include "Arithmetic.h"

using namespace std;


class SignedMagnitude {

    /* POLA */
private:
    list<Byte> bytes;         // zbiór bajtów, ostatni element(back) najbardziej znaczyący
private:
    unsigned exponent;        // definiuje ilość miejsc po przecinku
private:
    Bitflag negative;         // definiuje czy liczba jest dodatnia czy ujemna, true oznacza ujemna

    /* METODY */

    /// @brief
    /// Konstruktor. Zmienia zadaną wartość dziesiętną na jej reprezentacje w binarnym ZM.
    ///
    /// @param decimal_value wartośc dzisiętna liczby
    /// @return co zwraca
public:
    SignedMagnitude(Byte bytes[]);

public:
    SignedMagnitude(long long int decimal_value);

    // Operator przypisania
public:
    SignedMagnitude operator=(SignedMagnitude b);

    // Operatory porównania
public:
    SignedMagnitude operator<(SignedMagnitude b);

public:
    SignedMagnitude operator>(SignedMagnitude b);

public:
    SignedMagnitude operator==(SignedMagnitude b);

public:
    SignedMagnitude operator<=(SignedMagnitude b);

public:
    SignedMagnitude operator>=(SignedMagnitude b);

    // Destruktor
public:
    ~SignedMagnitude();

    // Wyświetla liczbę w ustalonej bazie
public:
    void print(unsigned base);

    // Dodawanie
public:
    SignedMagnitude operator+(SignedMagnitude b);

    // Odejmowanie
public:
    SignedMagnitude operator-(SignedMagnitude b);

    // Mnożenie
public:
    SignedMagnitude operator*(SignedMagnitude b);

    // Dzielenie
public:
    SignedMagnitude operator/(SignedMagnitude b);

    //getter
public:
    list<Byte> getByte();

public:
Bitflag getNegative();

};