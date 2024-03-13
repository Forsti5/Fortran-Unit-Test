#!/bin/bash -f

if [[ -d build ]]
then
    rm -rf build
fi

export FC=ifx

mkdir -p build
cd build
cmake .. -DCMAKE_PREFIX_PATH=$PFUNIT_DIR
make -j

cd tests
export PROF_DIR=./coverage
mkdir -p coverage

ctest --verbose

profmerge *.dyn
cd coverage
codecov -prj Fortran-Unit-Test -spi ../../src/pgopti.spi -dpi pgopti.dpi -ccolor '#d7fad2'

