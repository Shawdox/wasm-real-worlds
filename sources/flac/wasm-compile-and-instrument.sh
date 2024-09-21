#!/bin/bash
./wasm-compile.sh
../../wasm_instrumenter/target/debug/afl_branch src/flac/flac.wasm src/flac/flac.instr.wasm
../../wasm_instrumenter/target/debug/canaries src/flac/flac.instr.wasm src/flac/flac.instr.wasm.0 --skip-print
