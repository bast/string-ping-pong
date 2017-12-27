cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

project(example Fortran CXX)

add_executable(
    example
    main.f90
    )

add_library(
    fortran_code
    sub.f90
    )

add_library(
    cpp_code
    sub.cpp
    )

target_link_libraries(
    example
    cpp_code
    )

target_link_libraries(
    cpp_code
    fortran_code
    )
