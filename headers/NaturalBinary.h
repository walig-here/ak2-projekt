#include <list>
#include "Arithmetic.h"

using namespace std;

/**
 * @brief 
 * Klasa repreznetująca całkowitą liczbę naturalną binarną.
 */
class NaturalBinary{

    /* POLA */
    private: list<Byte> bytes;      // zbiór bajtów, od najmniej do najbardziej znaczącego 

    /* METODY */

    // Konstruktory
    public: NaturalBinary(list<Byte> bytes);
    public: NaturalBinary(long long int decimal_value);
    public: NaturalBinary();

    // Destruktor
    public: ~NaturalBinary();

    // Dodawanie NB
    public: NaturalBinary operator+(NaturalBinary b);

    // Odejmowanie NB
    public: NaturalBinary operator-(NaturalBinary b);

    // Mnożenie NB
    public: NaturalBinary operator*(NaturalBinary b);

    // Dzielenie NB
    public: NaturalBinary operator/(NaturalBinary b);

    // Modulo NB
    public: NaturalBinary operator%(NaturalBinary b);

    // Dzielenie liczby NB przez wartość jednobajtową
    public: static NaturalBinary divide_by_byte(NaturalBinary a, Byte b, NaturalBinary* remainder = nullptr);

    // Dzielenie liczby NB z resztą
    private: NaturalBinary long_divsion(NaturalBinary b, NaturalBinary* remainder);

    // Usunięcie zbędnych bajtów -> zwraca true, gdy usunięto jakieś bajty
    public: bool optimize();

    // Operatory porównania w NB
    public: bool operator<(NaturalBinary b);
    public: bool operator>(NaturalBinary b);
    public: bool operator==(NaturalBinary b);
    public: bool operator<=(NaturalBinary b);
    public: bool operator>=(NaturalBinary b);

    // Operator do wyświetlenia
    public: friend std::ostream& operator<<(std::ostream& os, NaturalBinary nb);

    // Konwersja na ciąg znaków
    public: string toString();

    /* KLASY SKOJARZONE */
    friend class SignedMagnitude;

};