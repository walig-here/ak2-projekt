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

    // Operatory porównania w NB
    public: NaturalBinary operator<(NaturalBinary b);
    public: NaturalBinary operator>(NaturalBinary b);
    public: NaturalBinary operator==(NaturalBinary b);
    public: NaturalBinary operator<=(NaturalBinary b);
    public: NaturalBinary operator>=(NaturalBinary b);

    // Konwersja na ciąg znaków
    public: string toString();

    /* KLASY SKOJARZONE */
    friend class SignedMagnitude;

};