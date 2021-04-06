
from pathlib import Path

from . import globals
from . import split_asm

from . import settings

VERSION = globals.VERSION

def split(debug_logging, game_path, lib_path, src_path, asm_path, rel_path, inc_path, mk_gen, cpp_gen, asm_gen, sym_gen, rel_gen, process_count, select_modules, select_tu, select_asm):
    splitter = split_asm.Dol2AsmSplitter(debug_logging, game_path, lib_path, src_path, asm_path, rel_path, inc_path, mk_gen, cpp_gen, asm_gen, sym_gen, rel_gen, process_count, select_modules, select_tu, select_asm)
    return splitter.main()