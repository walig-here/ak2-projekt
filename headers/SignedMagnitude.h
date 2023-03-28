#include "NaturalBinary.h"
#include <list>

/**
 * @brief 
 * Klasa repreznetująca stałoprzecinkową liczbę w systmie znak-moduł.
 */
class SignedMagnitude {

    /* POLA */
    private: NaturalBinary* module;     // moduł liczby 
    private: unsigned exponent;         // definiuje ilość miejsc po przecinku
    private: Bitflag negative;          // definiuje czy liczba jest 
 
    /* METODY */

    /// @brief
    /// Konstruktor. Zmienia zadaną wartość dziesiętną na jej reprezentacje w binarnym ZM.
    ///
    /// @param decimal_value wartośc dzisiętna liczby
    /// @return co zwraca
    public: SignedMagnitude(list <Byte> bytes_input , unsigned int input_exp, Bitflag input_sign);
    public: SignedMagnitude(long long int decimal_value);

    // Destruktor
    public: ~SignedMagnitude();

    // Konwertuje liczbę na postać ciągu znaków
    public: string toString();
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