#!/bin/bash
./wasm-compile.sh && ../../wasm_instrumenter/target/debug/afl_branch abc2mtex.wasm abc2mtex.instr.wasm && ../../wasm_instrumenter/target/debug/canaries abc2mtex.instr.wasm abc2mtex.instr.wasm.0 --skip-print
