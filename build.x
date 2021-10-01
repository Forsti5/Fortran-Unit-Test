#!/bin/bash -f

if [[ -d build ]]
then
    rm -rf build
fi

export FC=ifort

mkdir -p build
cd build
cmake .. -DCMAKE_PREFIX_PATH=$PFUNIT_DIR
make -j

ctest --verbose

export PROF_DIR=./tests
profmerge *.dyn
cd tests
codecov -prj Fortran-Unit-Test -spi pgopti.spi -dpi pgopti.dpi

