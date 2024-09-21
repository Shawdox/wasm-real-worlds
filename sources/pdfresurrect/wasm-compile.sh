#!/bin/bash
CC="../../wasi-sdk-11.0/bin/clang --sysroot=../../wasi-sdk-11.0/share/wasi-sysroot"
$CC -O0 -g main.c pdf.c -I. -o pdfresurrect.wasm
