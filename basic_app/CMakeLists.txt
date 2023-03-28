CMAKE_MINIMUM_REQUIRED(VERSION 3.24)

project(basic_app_cmake)

set(CMAKE_CXX_STANDARD 17)

set(SOURCE
        ../ak2-projekt/src/Arithmetic.cpp
        ../ak2-projekt/src/DataSets.cpp
        ../ak2-projekt/src/main.cpp
        ../ak2-projekt/src/SignedMagnitude.cpp
        )

set(HEADER
        ../ak2-projekt/headers/Arithmetic.h
        ../ak2-projekt/headers/DataSets.h
        ../ak2-projekt/headers/SignedMagnitude.h)

include_directories(../ak2-projekt/headers)

add_executable(basic_app_cmake ${SOURCE} ${HEADER})