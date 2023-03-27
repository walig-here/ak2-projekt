#include <list>
#include "Arithmetic.h"

using namespace std;

/**
 * @brief 
 * Klasa repreznetująca całkowitą liczbę naturalną binarną.
 */
class NaturalBinary{

    /* POLA */
    private: list<Byte> bytes;      // zbiór bajtów, od najbardziej do najmniej znaczącego

    /* METODY */

    // Konstruktory
    protected: NaturalBinary(Byte bytes[], unsigned precission, bool negative);
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

    /* KLASY SKOJARZONE */
    friend class SignedMagnitude;

};