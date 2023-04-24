#pragma once
#include "NaturalBinary.h"
#include <list>

/**
 * @brief 
 * Klasa repreznetująca stałoprzecinkową liczbę w systmie znak-moduł. Jest to liczba dowolnej dokładności, która może znacznie
 * przekracać pojemności natywnych zmiennych języka C++. Wartość takiej liczby można wyrazić wzorem:
 * 
 * X = bytes * 256^(-exponent) * (-1)^(negative)
 * 
 */
class SignedMagnitude {

    /* POLA */
    private: NaturalBinary module;      // moduł liczby w formie liczby NB
    private: unsigned exponent;         // ilość miejsc po przecinku
    private: Bitflag negative;          // czy liczba jest ujemna? 
 
    /* METODY */

    /**
     * @brief 
     * Konstruktor pozwalający na zdefiniowanie dowolnie dużej liczby ZM. Stworzona w ten sposób liczba
     * może być wyrażona jako: bytes * 256^(-precission) * (-1)^(is_negative).
     * 
     * @param bytes bajty tworzonej liczby od najstarszego do najmłodszego
     * @param precission ilośc miejsc po przecinku
     * @param is_negative czy liczba jest ujemna?
     */
    public: SignedMagnitude(list <Byte> bytes , unsigned precission, Bitflag is_negative);


    /**
     * @brief 
     * Konstruktor pozwalający na zdefiniowanie liczby ZM za pomocą liczby wbudowanego, dużego, całkowitoliczbowego typu
     * ze znakiem. Może on wyłącznie stworzyć liczbę ZM z przedziału [LLONG_MIN; LLONG_MAX].
     * 
     * @param value wartość liczby ZM
     */
    public: SignedMagnitude(long long int value);


    /**
     * @brief 
     * Konstruktor domyślny, tworzący liczbę ZM o wartości 0.
     */
    public: SignedMagnitude();


    // Destruktor
    public: ~SignedMagnitude();


    /**
     * @brief 
     * Zwraca ciąg znaków przedstawiający liczbę ZM w formie szesnastkowego modułu
     * oraz naku w formie '-' (ujemna) lub '' (dodatnia). 
     */
    public: string toString();


    /**
     * @brief 
     * Wykonuje dodawanie w ZM. Precyzja wyniku jest równa precyzji
     * dokładniejszego składnika.
     * 
     * @param b drugi składnik sumy
     * 
     * @return Wynik dodawania o prezycji takiej, jak dokładniejszy składnik.
     */
    public: SignedMagnitude operator+(SignedMagnitude b);


    /**
     * @brief 
     * Wykonuje odejmowanie w ZM. Precyzja wyniku jest równa precyzji
     * dokładniejszego składnika.
     * 
     * @param b odjemnik
     * 
     * @return Wynik odejmowania o prezycji takiej, jak dokładniejszy operand.
     */
    public: SignedMagnitude operator-(SignedMagnitude b);


    /**
     * @brief 
     * Wykonuje mnożenie w ZM. Precyzja wyniku jest sumie precyzji
     * operandów.
     * 
     * @param b drugi czynnik
     * 
     * @return Wynik mnożenia o prezycji takiej, jak suma precyzji operandów.
     */
    public: SignedMagnitude operator*(SignedMagnitude b);


    /**
     * @brief 
     * Wykonuje dzielenie w ZM. Precyzja wyniku jest równa precyzji
     * dzielnej.
     * 
     * @param b dzielnik
     * 
     * @return Wynika dzielenia o prezycji takiej, jak dzielna.
     */
    public: SignedMagnitude operator/(SignedMagnitude b);


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
     * @brief 
     * Zwraca prawdę, gdy liczba jest równa zadanej liczbie b.
     */
    public: bool operator==(SignedMagnitude b);


    /**
     * @brief 
     * Zwraca prawdę, gdy liczba jest mniejsza od zadanej liczby b.
     */
    public: bool operator<(SignedMagnitude b);


    /**
     * @brief 
     * Zwraca prawdę, gdy liczba jest większa od zadanej liczby b.
     */
    public: bool operator>(SignedMagnitude b);


    /**
     * @brief 
     * Zwraca prawdę, gdy liczba jest większa lub równa od zadanej liczby b.
     */
    public: bool operator>=(SignedMagnitude b);


    /**
     * @brief 
     * Zwraca prawdę, gdy liczba jest mniejsza lub równa od zadanej liczby b.
     */
    public: bool operator<=(SignedMagnitude b);


    /**
     * @brief
     * Zwraca znak liczby ZM.
     **/
    public: Bitflag isNegative();


    /**
     * @brief 
     * Implementuje przesłanie liczby w formie ciągu znaków na standardowy strumień wyjściowy.
     */
    public: friend std::ostream& operator<<(std::ostream& os, SignedMagnitude sm);


    /**
     * @brief 
     * Ustala precyzję liczby ZM. Jeżeli zadana precyzja jest większa od aktualnej,
     * to dokładane są wyzerowane bajty na najstarszych pozycjach. Jeżeli jest mniejsza
     * od aktualnej, to liczba jest zaokrąglana przez obcięcie do zadanej prezycji. W wypadku,
     * gdy zadana precyzja jest równa aktualnej; nic się nie zmieni.
     * 
     * @param precission nowa precyzja liczby
     */
    public: void set_precission(unsigned precission);


    /**
     * @brief 
     * Optymalizuje ilośc bajtów zapisanych w module. Usuwa zbędne, zerowe bajty z jego początku.
     * Jeżeli precyzja liczby jest większa od ilości jej bajtów, to znaczy, że jest ona <1.
     * W takim wypadku metoda dokłada brakujące, zerowe bajty na najstarszych pozycjach.
     */
    private: void optimize();

};