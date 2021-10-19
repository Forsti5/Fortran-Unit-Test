cmake_minimum_required(VERSION 3.12)

project (Fortran-Unit-Test
  VERSION 1.0.0
  LANGUAGES Fortran)

if("$ENV{PFUNIT_TEST}" STREQUAL "TRUE")
  find_package(PFUNIT REQUIRED)
  enable_testing()
endif()

if(CMAKE_Fortran_COMPILER_ID MATCHES Intel)
  add_compile_options(-prof-gen=srcpos)
endif()

add_subdirectory(src)
if("$ENV{PFUNIT_TEST}" STREQUAL "TRUE")
add_subdirectory(tests)
endif()

