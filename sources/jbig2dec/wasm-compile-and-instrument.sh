#!/bin/bash
./wasm-compile.sh && ../../wasm_instrumenter/target/debug/afl_branch jbig2dec.wasm jbig2dec.instr.wasm && ../../wasm_instrumenter/target/debug/canaries jbig2dec.instr.wasm jbig2dec.instr.wasm.0 --skip-print
