#include <list>

using namespace std;

typedef unsigned char Byte;
typedef bool Bitflag;

class SignedMagnitude {

    /* POLA */
    private: list<Byte> bytes;         // zbiór bajtów, od najbardziej do najmniej znaczącej 
    private: unsigned exponent;        // definiuje ilość miejsc po przecinku
    private: Bitflag negative;         // definiuje czy liczba jest 

    /* METODY */

    /// @brief
    /// Konstruktor. Zmienia zadaną wartość dziesiętną na jej reprezentacje w binarnym ZM.
    ///
    /// @param decimal_value wartośc dzisiętna liczby
    /// @return co zwraca
    public: SignedMagnitude(Byte bytes[]);
    public: SignedMagnitude(long long int decimal_value);

    // Operator przypisania
    public: SignedMagnitude operator=(SignedMagnitude b);

    // Operatory porównania
    public: SignedMagnitude operator<(SignedMagnitude b);
    public: SignedMagnitude operator>(SignedMagnitude b);
    public: SignedMagnitude operator==(SignedMagnitude b);
    public: SignedMagnitude operator<=(SignedMagnitude b);
    public: SignedMagnitude operator>=(SignedMagnitude b);

    // Destruktor
    public: ~SignedMagnitude();

    // Wyświetla liczbę w ustalonej bazie
    public: void print(unsigned base);

    // Dodawanie
    public: SignedMagnitude operator+(SignedMagnitude b);

    // Odejmowanie
    public: SignedMagnitude operator-(SignedMagnitude b);

    // Mnożenie
    public: SignedMagnitude operator*(SignedMagnitude b);

    // Dzielenie
    public: SignedMagnitude operator/(SignedMagnitude b);

};