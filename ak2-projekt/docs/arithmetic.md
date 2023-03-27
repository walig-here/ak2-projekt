# Notatka z prac nad modułem Arithmetic

## Ogólny zamysł modułu
Głównym zadaniem modułu Arithmetic jest dostarczenie narzędzi pozwalających na podstawowe operacje arytmetyczne na bajtach w systmie NB. Będzie on kluczowy zwłaszcza w kolejnym etapie projektu, kiedy funkcje do operacji bajtowych posłużą jako składowe operacji na wielobajtowych liczbach ZM.

Funkcjonalności dostępne w module w dużej mierze bazują na bazowych instrukcjach arytmetycznych dostępnych w architekturze IA-32, którą poznajemy podczas kursu. De facto emuluje on rozkazy takie jak:
* ADD - dodawane bez przeniesienia
* ADDC - dodawanie z przeniesieniem
* SUB - odejmowanie bez pożyczki
* SBB - dodawanie z pożyczką
* MUL - mnożenie
* DIV - dzielenie całkowite z resztą

Dodatkowo moduł posiada wewnętrzną imitację flagi CF, która może okazać się kluczowa przy późniejszej implementacji wielobajotwego dodawania lub odejmowania.

## Podmoduł DataSets
W czasie pracy nad modułem Arithmetic koniecznym okazało się zdefiniowanie własnych typów danych reprezentujących:
* Flagi bitowe
* Bajty
* Słowa (2-bajtowe)

Dodatkowe typy poza bardziej intuicyjnymi (jeżeli chodzi o tematykę projektu) nazwami wprowadziły także zabezpieczenia, które pozwoliły na pełne zdefiniowanie zachowań zawartych w module Arithmetics funkcji. Zapezpieczenia te tyczyły się głównie kontroli zakresu jakie powinny przyjmować przetwarzane przez moduł Aritmetics argumenty. Przed wprowadzeniem autorskich typów danych możliwe były nieintuicyjne i niejasne zachowania metod przy wprowadzaniu argumentów niezgodnych z ich domyślnym 1-bajtowym formatem. Przykładowo:

Arithmetics::add(320, 456) -> 266 czyli wynik: 11, przeniesienie 1
Zamiast poprawnego wyniku 11 z przeniesieniem 3

To zachowanie spowodowane było faktem, że podczas przekazywania do funkcji argumenty były castowane na przyjmowany przez nią format, czyli 1-bajtowy unsigned char. Dopiero na tych scastowanych argumentach dokonywano obliczeń. Przy implementacji autorskich typów wprowadzono zasadę wywoływania wyjątku (invalid_argument) za każdym razem, gdzy zadany zostanie argument niemożliwy do bezpośredniego przekonwertowania na 1-bajtową wartość nieujemną. 

Typ "Word" wprowadzono głównie ze względu na metody MUL oraz DIV, które w przeciwnieństwie do rozkazów dodających oraz odejmujących wymagają więcej miejsca na przechowanie swojego wyniku. Pozwoliło to uniknąć dodawania do metod DIV oraz MUL dodatkowego parametru w postaci wskaźnika na lokację gdzie zapisane miałby zostać kolejno reszta z dzielenia oraz starszy bajt wyniku.

Typ Bitflag jest jedynie standardową zmienną typu bool, której nazwę zmieniono w celach zachowania spójności z tematyką projektu.

## Testy jednostkowe
Do obu modułów zostały stworzone testy jednostkowe sprawdzające poprawność ich działania w różnorakich sytuacjach. Do przeprowadzenia testów jednostkowych użyto biblioteki google-test.

### Testy dla ADD
* Zachowanie przy uzyskaniu sumy większej niż 1 bajt (dla flagi przeniesienia aktywnej i nieaktywnej)
* Zchowanie przy uzyskaniu sumy mniejszej niż 1 bajt (dla flagi przeniesienia aktywnej i nieaktywnej)

### Testy dla ADC
* Zachowanie przy uzyskaniu sumy większej niż 1 bajt (dla flagi przeniesienia aktywnej i nieaktywnej)
* Zchowanie przy uzyskaniu sumy mniejszej niż 1 bajt (dla flagi przeniesienia aktywnej i nieaktywnej)

### Testy dla SUB
* Zachowanie przy uzyskaniu różnicy mniejszej niż 0 (dla flagi pożyczki aktywnej i nieaktywnej)
* Zachowanie przy uzyskaniu różnicy większej niż 0 (dla flagi pożyczki aktywnej i nieaktywnej)

### Testy dla SBB
* Zachowanie przy uzyskaniu różnicy mniejszej niż 0 (dla flagi pożyczki aktywnej i nieaktywnej)
* Zachowanie przy uzyskaniu różnicy większej niż 0 (dla flagi pożyczki aktywnej i nieaktywnej)

### Testy dla MUL
* Zachowanie przy uzyskaniu iloczynu mieszczącego się w 1 bajcie (dla flagi przeniesienia aktywnej i nieaktywnej)
* Zachowanie przy uzyskaniu iloczynu niemieszczącego się w 1 bajcie (dla flagi przeniesienia aktywnej i nieaktywnej)

### Testy dla DIV
* Zachowanie przy dzieleniu przez 0
* Zachowanie przy dzieleniu, w którym reszta wynosi 0
* Zachowanie przy dzieleniu, w którym reszta jesy niezerowa

### Testy dla Byte
* Zachowanie konstruktora inicjującego wyzerowany bajt
* Zachowanie konstruktora budującego bajt z zadanej wartości (poprawnej oraz nieporawnej)

### Testy dla Word
* Zachowanie konstruktora inicjującego wyzerowane słowo
* Zachowanie konstruktora budującego słowo z zadanej wartości (poprawnej oraz nieporawnej)
