CMAKE_MINIMUM_REQUIRED(VERSION 3.24)

project(magni_test)

set(CMAKE_CXX_STANDARD 17)

set(SOURCE
        ../ak2-projekt/src/Arithmetic.cpp
        ../ak2-projekt/src/DataSets.cpp
        ../ak2-projekt/src/SignedMagnitude.cpp
        ../ak2-projekt/test/SignedMagnitudeTest.cpp
        )

set(HEADER
        ../ak2-projekt/headers/Arithmetic.h
        ../ak2-projekt/headers/DataSets.h
        ../ak2-projekt/headers/SignedMagnitude.h)

include_directories(../ak2-projekt/headers)
include_directories("D:/clion/CLion 2022.3.3/lib/googletest/googletest/include")


add_executable(magni_test ${SOURCE} ${HEADER})
target_link_libraries(magni_test "D:/clion/CLion 2022.3.3/lib/googletest/googletest/gtest.a")