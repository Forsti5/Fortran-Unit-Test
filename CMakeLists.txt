cmake_minimum_required(VERSION 3.12)

project (Fortran-Unit-Test
  VERSION 1.0.0
  LANGUAGES Fortran)

find_package(PFUNIT REQUIRED)
enable_testing()

if(CMAKE_Fortran_COMPILER_ID MATCHES Intel)
  add_compile_options(-prof-gen=srcpos)
endif()

if(CMAKE_Fortran_COMPILER_ID MATCHES GNU)
   add_link_options(--coverage)
endif()

add_subdirectory(src)
add_subdirectory(tests)


