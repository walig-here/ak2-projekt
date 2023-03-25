#include "DataSets.h"

/*
    Klasa mająca emulować podstawowe działania arytmetyczne wykonywane przez ALU.
    Bazowana na podstawowych rozkazach arytmetycznych dostępnych w architekturze Intel-a znanej z laboratorium (IA-32).
*/
class Arithmetic{

    /* POLA */
    public: static Bitflag carry;      /** Flaga przeniesienia lub pożyczki. */ 

    /* MEOTDY */

    /**
     * @brief
     * Dodaje zadane argumenty 1-bajtowe bez uwzględnia flagi
     * przeniesienia. W przypadku, gdy wynik dodawania zadanych 
     * parametrów przekroczy zakres BYTE_MAX, zostanie aktywowana 
     * flaga carry.
     *
     * @param a pierwszy składnik sumy
     * @param b drugi składnik sumy
     *
     * @return 
     * Sumę zadanych składników w formie 1 bajtu.
     */
    public: static Byte add(Byte a, Byte b);


    /**
     * @brief
     * Dodaje zadane argumenty 1-bajtowe z uwzględnieniem flagi
     * przeniesienia. W przypadku, gdy wynik dodawania zadanych 
     * parametrów przekroczy zakres BYTE_MAX, zostanie aktywowana 
     * flaga carry.
     *
     * @param a pierwszy składnik sumy
     * @param b drugi składnik sumy
     *
     * @return 
     * Sumę zadanych składników oraz obecnego przeniesienia w 
     * formie 1 bajtu.
     */
    public: static Byte addc(Byte a, Byte b);


    /**
     * @brief 
     * Odejmuje zadane argumenty 1-bajtowe bez uwzględnienia flagi
     * pożyczki. W przypadku, gdy wynik odejmowania zadanych parametrów
     * będzie ujemny, to zostanie aktywowana flaga pożyczki.
     * 
     * @param a odjemna
     * @param b odjemnik
     * 
     * @return
     * Różnicę zadanych składników w formie 1 bajtu.
     */
    public: static Byte sub(Byte a, Byte b);


    /**
     * @brief 
     * Odejmuje zadane argumenty 1-bajtowe bez uwzględnieniem flagi
     * pożyczki. W przypadku, gdy wynik odejmowania zadanych parametrów
     * będzie ujemny, to zostanie aktywowana flaga pożyczki.
     * 
     * @param a odjemna
     * @param b odjemnik
     * 
     * @return
     * Różnicę zadanych składników oraz obecnej pożyczki w formie 1 bajtu.
     */
    public: static Byte sbb(Byte a, Byte b);


    /**
     * @brief 
     * Mnoży zadane arguemnty 1-bajtowe. W przypadku, gdy wynik mieści się
     * w zakresie zmiennej Byte aktywuje flagę przeniesienia. W przeciwnym
     * wypadku dezaktywuje flagę przeniesienia.
     * 
     * @param a pierwszy czynnik
     * @param b drugi czynnik
     * 
     * @return
     * Iloczyn zadanych składników w formie słowa 2-bajtowego.
     */
    public: static Word mul(Byte a, Byte b);


    /**
     * @brief 
     * Dzieli z resztą zadane agrumenty 1-bajtowe. Jeżeli wynik dzielenia
     * nie był całkowity to jest zaokrąglany do zera poprzez obcięcie. 
     * W przypadku próby dzielenia przez 0 wywołuje wyjątek.
     * 
     * @param a dzielna
     * @param b dzielnik
     * 
     * @return
     * Iloraz oraz resztę z dzielenia zadanych składników w formie słowa
     * 2-bajtowego. Iloraz znajduje się w bajcie starszym, reszta w młodszym.
     * 
     * @throw runtime_error div 0 przy próbie podzielenia przez 0
     */
    public: static Word div(Byte a, Byte b);

};