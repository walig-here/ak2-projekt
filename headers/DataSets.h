/**
 * Plik zawierający dane na temat podstawowych zbiorów danych uzywanych w module Arithmetic.
 */


typedef bool Bitflag;   // Typ reprezentujący flagę 1-bitową
#define BITFLAG_MAX 0b1         // Maksymalna wartość możliwa do zapisania w typie Bitflag  

// Struktura reprezentująca bajt w systemie NB.
struct Byte{

    /* POLA */
    unsigned char value;    // wartość bajtu w systemie NB

    /* METODY */

    /**
     * @brief
     * Konstruktor. Tworzy bajt w systemie NB. W wypadku zadania wartości przekraczającej
     * BYTE_MAX do nowej zmiennej przypisane zostnie wartość 0. Podobnie w wypadku podania
     * wartości ujemnej.
     * 
     * @param value wartość jaka ma zostać przypisana bajtowi
     */
    Byte(unsigned long long value);


    /**
     * @brief
     * Konstruktor domyślny. Tworzy wyzerowany bajt w systemie NB.   
     */
    Byte() {value = 0x00;}

};
#define BYTE_MAX 0xFF      // Maksymalna wartość możliwa do zapisania w typie Byte  


// Struktura reprezentująca słowo (2-bajtowe) w systemie NB.
struct Word{

    /* POLA */
    Byte low_byte;    // niższy bajt słowa
    Byte high_byte;    // wyższy bajt słowa

    /* METODY */

    /**
     * @brief 
     * Konstruktor domyślny. Tworzy wyzerowane słowo w systemie NB.
     */
    Word() { low_byte = 0x00; high_byte = 0x00; }


    /**
     * @brief 
     * Konstruktor. Tworzy słowo 2-bajtowe w systemie NB. W wypadku zadania wartości przekraczającej
     * WORD_MAX do nowej zmiennej przypisane zostnie wartość 0. Podobnie w wypadku podania
     * wartości ujemnej.
     * 
     * @param value wartość jaka ma zostać przypisana do słowa.
     */
    Word(unsigned long long value);


    /**
     * @brief 
     * Zwraca wartość słowa jako całości. 
     * 
     * @return
     * Wartość słowa.
     */
    unsigned short value() { return low_byte.value + 0x100 * high_byte.value; }

};
#define WORD_MAX 0xFFFF