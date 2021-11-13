# Fortran-Unit-Test-Basic

This example shows a unit test in Fortran made with [pFUnit](https://github.com/Goddard-Fortran-Ecosystem/pFUnit). The output is the test result and the code coverage. This code is an extension of https://github.com/Forsti5/Fortran-Unit-Test-Trivial to multiple folders, so that the source files and the test files can get saved separate.

## Summary

In the /src folder are four Fortran files, one is a main programm, and the other three files only include subroutines with different calculations (Lorentz force, cross- and dot product, and shooting range of a projectile). In the /test folder are the tests for the different calculations. 

## Building

The program can be built with `cmake`. 

### Supported compilers
* GNU Fortan
* Intel Fortran Compiler

### Required tools
* [pFUnit](https://github.com/Goddard-Fortran-Ecosystem/pFUnit)
* [lcov](https://github.com/linux-test-project/lcov) (only necessary for build with GNU Fortan)

To install pFUnit, follow the instructions on the linked github project page.

To install lcov on Ubuntu Linux use
```
sudo apt install lcov
```
To install lcov on macOS use
```
sudo port install lcov
```

To build, execute the test and generating of the coverage files, use the bash scripts `build_gfortran.x` or `build_ifort.x`, depending on the compiler you want to use. These scripts require a correct set PFUNIT_DIR environment variable. There is also a workflow implemented, which saves the coverage reports as an artifact, see https://github.com/Forsti5/Fortran-Unit-Test-Basic/actions/runs/1413720878 and https://github.com/Forsti5/Fortran-Unit-Test-Basic/blob/main/.github/workflows/main.yml.

### Executing the test

To run the test, you can use ctest or the executable.

With ctest:
```
cd build
ctest --verbose
```

With the executable:
```
cd build/tests
./test_lorentz_force_mod
./test_projectile_motion_mod
./test_vector_products_mod
```
