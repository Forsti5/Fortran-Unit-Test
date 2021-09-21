#!/bin/bash -f

if [[ -d build ]]
then
    rm -rf build
fi

mkdir -p build
cd build
#cmake ..
cmake .. -DCMAKE_PREFIX_PATH=$PFUNIT_DIR
make -j

 ctest --verbose

