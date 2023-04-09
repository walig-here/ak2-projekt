g++ -g -O3 test/NaturalBinaryTest.cpp src/NaturalBinary.cpp src/DataSets.cpp src/Arithmetic.cpp -std=c++14 -o nb-test -I headers -I "D:\C++ Development\lib\googletest\googletest\include" "D:\C++ Development\lib\googletest\googletest\gtest.a" -pthread 
nb-test.exe
del nb-test.exe