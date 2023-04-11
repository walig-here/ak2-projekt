#include "NaturalBinary.h"
#include <list>

/**
 * @brief 
 * Klasa repreznetująca stałoprzecinkową liczbę w systmie znak-moduł.
 */
class SignedMagnitude {

    /* POLA */
    private: NaturalBinary module;     // moduł liczby 
    private: unsigned exponent;         // definiuje ilość miejsc po przecinku
    private: Bitflag negative;          // definiuje czy liczba jest 
 
    /* METODY */


    /// @brief
    /// Konstruktor. Zmienia zadaną tablice bajtow na liczbe  ZM.
    ///
    /// @param bytes_input tablica bajtow, gdzie 1 pozycja - najstarszy bajt liczby
    /// @param input_exp oznacza precyzje
    /// @param input_sign oznacza znak liczby
    public: SignedMagnitude(list <Byte> bytes_input , unsigned int input_exp, Bitflag input_sign);



    /// @brief
    /// Konstruktor. Zmienia zadaną wartość dziesiętną na jej reprezentacje w szesnastkowym ZM.
    ///
    /// @param decimal_value wartośc dzisiętna liczby
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

    /**
    * mwtody zwracajace znak
    **/
    public: Bitflag mulDivSign(SignedMagnitude b);
    public: Bitflag addSign(SignedMagnitude b);

    //argument to odjemnik
    public: Bitflag subSign(SignedMagnitude b);



    /**
     * zwraca liste bajtow liczby od najstarszego do najmlodszego
     **/
    public: list<Byte>& getByte();

    /**
     * zwraca znak liczby
     **/
    public: Bitflag getNegative();


};