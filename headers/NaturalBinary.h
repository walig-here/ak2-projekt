#include <list>
#include "Arithmetic.h"

using namespace std;

/**
 * @brief 
 * Klasa repreznetująca całkowitą liczbę naturalną binarną.
 */
class NaturalBinary{

    /* POLA */
    protected: list<Byte> bytes;      // zbiór bajtów, od najmniej do najbardziej znaczącego 

    /* METODY */

    // Konstruktory
    protected: NaturalBinary(list<Byte> bytes);
    protected: NaturalBinary(long long int decimal_value);

    // Destruktor
    protected: ~NaturalBinary();

    // Dodawanie NB
    protected: NaturalBinary operator+(NaturalBinary b);

    // Odejmowanie NB
    protected: NaturalBinary operator-(NaturalBinary b);

    // Mnożenie NB
    protected: NaturalBinary operator*(NaturalBinary b);

    // Dzielenie NB
    protected: NaturalBinary operator/(NaturalBinary b);

    // Operatory porównania w NB
    protected: NaturalBinary operator<(NaturalBinary b);
    protected: NaturalBinary operator>(NaturalBinary b);
    protected: NaturalBinary operator==(NaturalBinary b);
    protected: NaturalBinary operator<=(NaturalBinary b);
    protected: NaturalBinary operator>=(NaturalBinary b);

    // Konwersja na ciąg znaków
    public: string toString();

    /* KLASY SKOJARZONE */
    friend class SignedMagnitude;

};