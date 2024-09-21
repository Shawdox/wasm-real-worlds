#!/bin/bash
WASI_PATH=/home/WORK/PAPER2/fuzzm-project/wasi-sdk-11.0/bin
CC=$WASI_PATH/clang \
CXX=$WASI_PATH/clang++ \
CPP=$WASI_PATH/clang-cpp \
AR=$WASI_PATH/ar \
RANLIB=$WASI_PATH/ranlib \
NM=$WASI_PATH/nm \
LD=$WASI_PATH/ld \
./configure --host=wasm32-wasi --enable-shared=no CFLAGS="--sysroot=/home/WORK/PAPER2/fuzzm-project/wasi-sdk-11.0/share/wasi-sysroot"
make
cp ./programs/sndfile-convert /home/WORK/PAPER1/real-world-projects/diff-fuzz/libsndfile/convert-fuzz/sndfile-convert.wasm
cp ./programs/sndfile-info /home/WORK/PAPER1/real-world-projects/diff-fuzz/libsndfile/info-fuzz/sndfile-info.wasm
cp ./programs/sndfile-metadata-get /home/WORK/PAPER1/real-world-projects/diff-fuzz/libsndfile/metadata-get-fuzz/sndfile-metadata-get.wasm
