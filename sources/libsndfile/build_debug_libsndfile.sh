#!/bin/bash
make clean
target_dir="/home/WORK/real-world-projects/manual_analysis/libsndfile"
mkdir -p ${target_dir}/sndfile-convert/
mkdir -p ${target_dir}/sndfile-info/
mkdir -p ${target_dir}/sndfile-metadata-get/

if [[ $1 != 'x86' && $1 != 'wasm' ]];then
    echo -e "\e[31m ERROR!\n\e[0m"
    exit
fi

if [[ $1 == 'x86' ]];then
    GCC_PATH=/usr/bin \
    CC=$GCC_PATH/gcc \
    CXX=$GCC_PATH/g++ \
    ./configure --enable-shared=no CFLAGS="-O0 -g"
elif [[ $1 == 'wasm' ]];then
    WASI_PATH=/opt/wasi-sdk-20.0/bin 
    CC=$WASI_PATH/clang \
    CXX=$WASI_PATH/clang++ \
    CPP=$WASI_PATH/clang-cpp \
    AR=$WASI_PATH/llvm-ar \
    RANLIB=$WASI_PATH/llvm-ranlib \
    NM=$WASI_PATH/llvm-nm \
    LD=$WASI_PATH/wasm-ld \
    ./configure --host=wasm32-wasi \
        --enable-shared=no CFLAGS="--sysroot=/opt/wasi-sdk-20.0/share/wasi-sysroot -O0 -g" 
fi
make -j

if [[ $1 == 'x86' ]];then
    cd "/home/WORK/real-world-projects/libsndfile/programs" || exit
    mv sndfile-convert ${target_dir}/sndfile-convert/
    mv sndfile-info ${target_dir}/sndfile-info/
    mv sndfile-metadata-get ${target_dir}/sndfile-metadata-get/

elif [[ $1 == 'wasm' ]];then
    cd "/home/WORK/real-world-projects/libsndfile/programs" || exit
    mv sndfile-convert ${target_dir}/sndfile-convert/sndfile-convert.wasm
    mv sndfile-info ${target_dir}/sndfile-info/sndfile-info.wasm
    mv sndfile-metadata-get ${target_dir}/sndfile-metadata-get/sndfile-metadata-get.wasm
fi