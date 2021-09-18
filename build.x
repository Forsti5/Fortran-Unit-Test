#!/bin/bash -f

if [[ -d build ]]
then
    rm -rf build
fi

mkdir -p build
cd build
#cmake ..
cmake .. -DCMAKE_PREFIX_PATH=$HOME/Bachelorarbeit/pFUnit/build/installed/PFUNIT-4.2
make -j

 ctest --verbose

