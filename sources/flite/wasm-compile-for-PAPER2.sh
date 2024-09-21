WASI_PATH=/home/WORK/PAPER2/fuzzm-project/wasi-sdk-11.0/bin &&
CC="${WASI_PATH}/clang --sysroot=/home/WORK/PAPER2/fuzzm-project/wasi-sdk-11.0/share/wasi-sysroot" \
CXX="${WASI_PATH}/clang++ --sysroot=/home/WORK/PAPER2/fuzzm-project/wasi-sdk-11.0/share/wasi-sysroot" \
CPP="${WASI_PATH}/clang-cpp --sysroot=/home/WORK/PAPER2/fuzzm-project/wasi-sdk-11.0/share/wasi-sysroot" \
AR=$WASI_PATH/llvm-ar \
RANLIB=$WASI_PATH/llvm-ranlib \
NM=$WASI_PATH/llvm-nm \
LD=$WASI_PATH/wasm-ld \
./configure --host=wasm32-wasi --disable-shared
make clean && make
cp ./bin/flite /home/WORK/PAPER1/real-world-projects/diff-fuzz/flite/flite/flite.wasm
cp ./bin/t2p /home/WORK/PAPER1/real-world-projects/diff-fuzz/flite/t2p/t2p.wasm