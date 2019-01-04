#!/bin/sh
# build the CDVS Test Model
# with full optimizations and multithreading:
CFLAGS="-march=armv7-a -O2 -DNDEBUG -fopenmp -pipe"
export PATH=$PATH:/home/liutao/ndk_toolchain/arm-linux-androideabi/bin
# run configure with optimization flags and prepending "tm-" to all binaries (e.g. tm-extract, tm-match, etc.)
mkdir -p build
cd build
rm -rf ./*
cmake ..
# build all binaries
make
# install all binaries in $HOME/bin (no need of admin priviledges)
make install
