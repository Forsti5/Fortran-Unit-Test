#!/bin/bash -f

if [[ -d build ]]
then
    rm -rf build
fi

mkdir -p build
cd build
if [[ $PFUNIT_TEST = "TRUE" ]]
then
  cmake .. -DCMAKE_PREFIX_PATH=$PFUNIT_DIR
else
  cmake ..
fi
make -j

if [[ $PFUNIT_TEST = "TRUE" ]]
then
  cd tests
  export PROF_DIR=./coverage
  mkdir -p coverage
  
  ctest --verbose

  if [[ $FC = "ifort" ]]
  then
    profmerge *.dyn
    cd coverage
    codecov -prj Fortran-Unit-Test -spi ../../src/pgopti.spi -dpi pgopti.dpi -ccolor '#d7fad2'
  fi
fi

