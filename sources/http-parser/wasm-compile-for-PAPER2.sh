#!/bin/bash
make clean
WASI_PATH=/home/WORK/PAPER2/fuzzm-project/wasi-sdk-11.0/bin && \
CC="${WASI_PATH}/clang --sysroot=/home/WORK/PAPER2/fuzzm-project/wasi-sdk-11.0/share/wasi-sysroot" \
AR=$WASI_PATH/llvm-ar \
RANLIB=$WASI_PATH/llvm-ranlib \
NM=$WASI_PATH/llvm-nm \
LD=$WASI_PATH/wasm-ld \
make parsertrace url_parser

cp ./parsertrace /home/WORK/PAPER1/real-world-projects/diff-fuzz/http-parser/parsertrace-fuzz/parsertrace.wasm
cp ./url_parser /home/WORK/PAPER1/real-world-projects/diff-fuzz/http-parser/url_parser-fuzz/url_parser.wasm