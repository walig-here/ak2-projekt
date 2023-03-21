
typedef bool Bitflag;           // typ reprezentujący flagę bitową
#define MAX_BITFLAG 0b1         // Maksymalna wartość możliwa do zapisania w Bitflag        

typedef unsigned char Byte;     // typ reprezentujący 1 bajt
#define MAX_BYTE 0xFF           // Maksymalna wartość możliwa do zapisania w Byte


/*
    Klasa mająca emulować podstawowe działania arytmetyczne wykonywane przez ALU.
    Bazowana na podstawowych rozkazach arytmetycznych dostępnych w architekturze Intel-a znanej z laboratorium (IA-32).
*/
class Arithmetic{

    /* POLA */
    public: static Bitflag carry;      // flaga przeniesienia

    /* MEOTDY */

    // Dodawanie bez uwzględnienia przeniesienia
    public: static Byte add(Byte a, Byte b);

    // Dodawanie z uwzględnieniem przeniesienia
    public: static Byte addc(Byte a, Byte b);

    // Odejmowanie 
    public: static Byte sub(Byte a, Byte b);

    // Mnożenie 
    public: static Byte mul(Byte a, Byte b);

    // Dzielenie
    public: static Byte div(Byte a, Byte b);

};