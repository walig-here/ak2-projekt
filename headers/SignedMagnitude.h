#pragma once
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

    /**
     * @brief 
     * Konstruktor domyślny, tworzący liczbę ZM o wartości 0.
     */
    public: SignedMagnitude();

    // Destruktor
    public: ~SignedMagnitude();

    // Konwertuje liczbę na postać ciągu znaków
    public: string toString();

    /**
     * @brief 
     * Wykonuje dodawanie w ZM. Precyzja wyniku jest równa precyzji
     * dokładniejszego składnika.
     */
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
    public: Bitflag subSign(SignedMagnitude b); //argument to odjemnik

    /**
     * @brief 
     * Zwraca moduł liczby, który jest wyrównany wagami do modułu
     * zadanej liczby b. Jeżeli this byłaby większą liczbą lub miałoby
     * większą precyzję od b, to moduł się nie zmienia.
     * 
     * @param b liczba ZM, do której wyrównujemy
     * 
     * @return Moduł this wyrównany wagami do liczby b.
     */
    public: NaturalBinary alignModuleWith(SignedMagnitude b);



    /**
     * zwraca liste bajtow liczby od najstarszego do najmlodszego
     **/
    public: list<Byte>& getByte();

    /**
     * zwraca znak liczby
     **/
    public: Bitflag getNegative();

    // Operator do wyświetlenia
    public: friend std::ostream& operator<<(std::ostream& os, SignedMagnitude sm);

    /**
     * @brief 
     * Ustala precyzję liczby ZM.
     */
    public: void set_precission(unsigned precission);

    /**
     * @brief 
     * Optymalizuje ilośc bajtów zapisanych w module. Usuwa zbędne, zerowe bajty z jej początku.
     * Jeżeli precyzja liczby jest większa od ilości jej bajtów, to oznacza to, że jest ona <1.
     * W takim wypadku metoda dokłada brakujące, zerowe bajty na najstarszych pozycjach.
     */
    private: void optimize();

};