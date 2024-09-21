## Compliation

run `wasm-compile-and-instrument.sh` or `wasm-compile-for-PAPER2.sh` in the corresponding source folder.



## Execution example

- abc2metx

```bash
wasmtime ./abc2mtex.instr.wasm.0 input.abc
```

- flac

```bash
wasmtime ./flac.instr.wasm.0 -f -d input.flac
```

- jbig2dec

```bash
wasmtime ./jbig2dec.instr.wasm.0 input.jbig2 -t png -o /dev/null
```

- libpng

```bash
wasmtime ./pnm2png.instr.wasm.0 input.pgm /dev/null
```

- libtiff

```bash
wasmtime ./pal2rgb.instr.wasm.0 input /dev/null
```

- openjpeg

```bash
wasmtime ./opj_compress.instr.wasm -i ./input.bmp -o ./output.jp2
```

- pdfresurrect

```bash
wasmtime ./pdfresurrect.instr.wasm input
```

- libsndfile

```bash
wasmtime ./sndfile-convert.instr.wasm.0 input /dev/null
wasmtime ./sndfile-info.instr.wasm.0 input
wasmtime ./sndfile-metadata-get.instr.wasm.0 input
```

- libtomcrypt

```bash
wasmtime ./hashsum.instr.wasm.0 -a rmd320 input
wasmtime ./ltcrypt.instr.wasm.0 aes input /dev/null
```

- flite

```bash
wasmtime ./flite.instr.wasm.0 input /dev/null
```

- http-parser

```bash
wasmtime ./url_parser.instr.wasm.0 get < input
```

