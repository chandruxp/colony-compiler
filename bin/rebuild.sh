#!/bin/sh

# https://github.com/kripken/emscripten/issues/1637
emcc colony-lua/src/lapi.c colony-lua/src/lauxlib.c colony-lua/src/lbaselib.c colony-lua/src/lcode.c colony-lua/src/ldblib.c colony-lua/src/ldebug.c colony-lua/src/ldo.c colony-lua/src/ldump.c colony-lua/src/lfunc.c colony-lua/src/lgc.c colony-lua/src/linit.c colony-lua/src/liolib.c colony-lua/src/llex.c colony-lua/src/lmathlib.c colony-lua/src/lmem.c colony-lua/src/loadlib.c colony-lua/src/lobject.c colony-lua/src/lopcodes.c colony-lua/src/loslib.c colony-lua/src/lparser.c colony-lua/src/lstate.c colony-lua/src/lstring.c colony-lua/src/lstrlib.c colony-lua/src/ltable.c colony-lua/src/ltablib.c colony-lua/src/ltm.c colony-lua/src/lundump.c colony-lua/src/lvm.c colony-lua/src/lzio.c colony-lua/src/print.c compile_lua.c -I colony-lua/src -o compile_lua.js -s EXPORTED_FUNCTIONS="['_go_for_it']" -O3 -s OUTLINING_LIMIT=100000