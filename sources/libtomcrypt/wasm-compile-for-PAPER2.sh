WASI_PATH=/home/WORK/PAPER2/fuzzm-project/wasi-sdk-11.0/bin && \
CC="${WASI_PATH}/clang --sysroot=/home/WORK/PAPER2/fuzzm-project/wasi-sdk-11.0/share/wasi-sysroot" \
AR=$WASI_PATH/llvm-ar \
RANLIB=$WASI_PATH/llvm-ranlib \
NM=$WASI_PATH/llvm-nm \
LD=$WASI_PATH/wasm-ld \
CFLAGS="-O2 -D_WASI_EMULATED_SIGNAL -D_WASI_EMULATED_PROCESS_CLOCKS" \
LDFLAGS="-lwasi-emulated-signal " \
make hashsum ltcrypt 

cp ./hashsum /home/WORK/PAPER1/real-world-projects/diff-fuzz/libtomcrypt/hashsum/hashsum.wasm
cp ./ltcrypt /home/WORK/PAPER1/real-world-projects/diff-fuzz/libtomcrypt/ltcrypt/ltcrypt.wasm
