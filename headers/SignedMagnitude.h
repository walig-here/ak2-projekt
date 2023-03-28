#include "NaturalBinary.h"
#include <list>

/**
 * @brief 
 * Klasa repreznetująca stałoprzecinkową liczbę w systmie znak-moduł.
 */
class SignedMagnitude {

    /* POLA */
    private: NaturalBinary* module;     // zbiór bajtów, od najbardziej do najmniej znaczącej 
    private: unsigned exponent;         // definiuje ilość miejsc po przecinku
    private: Bitflag negative;          // definiuje czy liczba jest 
 
    /* METODY */

    /// @brief
    /// Konstruktor. Zmienia zadaną wartość dziesiętną na jej reprezentacje w binarnym ZM.
    ///
    /// @param decimal_value wartośc dzisiętna liczby
    /// @return co zwraca
    public: SignedMagnitude(list<Byte> bytes, unsigned exp, Bitflag negative );
    public: SignedMagnitude(long long int decimal_value);

    // Destruktor
    public: ~SignedMagnitude();

    // Wyświetla liczbę w ustalonej bazie
    public: void print(unsigned base);

    // Dodawanie ZM
    public: SignedMagnitude operator+(SignedMagnitude b);

    // Odejmowanie ZM
    public: SignedMagnitude operator-(SignedMagnitude b);

    // Mnożenie ZM
    public: SignedMagnitude operator*(SignedMagnitude b);

    // Dzielenie ZM
    public: SignedMagnitude operator/(SignedMagnitude b);

    //getter
    public: list<Byte> getByte();
    public: Bitflag getNegative();


};