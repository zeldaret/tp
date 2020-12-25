"""
progress.py - erin moon for zeldaret, 202x

thanks go to Léo Lam for some ideas
"""

import click
from pathlib import Path
from elftools.elf.elffile import ELFFile # type: ignore
from elftools.elf.sections import Symbol # type: ignore
from dataclasses import dataclass
from enum import Enum
from tqdm import tqdm # type: ignore
from typing import List, DefaultDict
from collections import defaultdict
import re


class TULang(Enum):
    ASM = 0
    CXX = 1
    C   = 2

    @property
    def src_extension(self) -> str:
        return {TULang.ASM: '.s',
                TULang.CXX: '.cpp',
                TULang.C: '.c'}[self]

class FunctionStatus(Enum):
    Matching = 0
    NonMatching = 1
    Split = 2
    NotDecompiled = 3

@dataclass
class TranslationUnit:
    path: Path
    lang: TULang
    symtab: List[Symbol]

    @property
    def source_path(self) -> Path:
        return get_repo_root() / self.path.with_suffix(self.lang.src_extension)

def get_repo_root() -> Path:
    return Path(__file__).parents[1]

def get_build_dir() -> Path:
    return get_repo_root() / 'build'

def load_symtab(o: Path) -> List[Symbol]:
    with open(o, 'rb') as f:
        elf = ELFFile(f)
        return list(elf.get_section_by_name('.symtab').iter_symbols())

def guess_lang(o: Path) -> TULang:
    if o.parts[0] == 'asm':
        return TULang.ASM
    else:
        return TULang.CXX # TODO: we might have some C TUs

def should_consider_symbol(s: Symbol) -> bool:
    if s['st_shndx'] in ['ST_UNDEF', 'SHN_UNDEF']:
        return False
    if s['st_info']['type'] in ['STT_SECTION']:
        return False
    if s['st_info']['bind'] != 'STB_GLOBAL':
        return False
    
    return True

NONMATCHING_RE = re.compile(r'#ifdef\s+NON_?MATCHING\n\s*\S*?\s+(\S+)\s*\(', re.MULTILINE)
ASM_RE = re.compile(r'^asm\s+(?:\S*?\s+)?(\S+)\s*\(', re.MULTILINE)

SKIP_PATHS = [Path('asm/bss.o'), Path('asm/data.o'), Path('asm/rodata.o'),
    Path('asm/sbss.o'), Path('asm/sbss2.o'), Path('asm/sdata.o'), Path('asm/sdata2.o'),
    Path('asm/clib.o'), Path('asm/ctors.o'), Path('asm/dtors.o'),
    Path('asm/init.o'),
]

@click.command()
def progress():
    output_dir = get_build_dir() / 'dolzel2'
    tus: List[TranslationUnit] = []
    click.echo('Loading TU symbols...')
    for path in tqdm(output_dir.rglob('*.o')):
        rel_path = path.relative_to(output_dir)
        if rel_path in SKIP_PATHS:
            continue

        tus.append(TranslationUnit(
            rel_path,
            guess_lang(rel_path),
            load_symtab(path)))

    stats: DefaultDict[FunctionStatus, int] = defaultdict(int)
    for tu in tus:
        if tu.lang == TULang.CXX:
            with open(tu.source_path, 'r') as src_f:
                src = src_f.read()
                tu_nonmatching = set(NONMATCHING_RE.findall(src))
                tu_asm = set(ASM_RE.findall(src))

                # hacky but doing better probably requires de/mangling
                tu_func_count = len([s for s in tu.symtab if should_consider_symbol(s)])
                print(tu.path, tu_func_count, tu_asm, tu_nonmatching)
                stats[FunctionStatus.Split] += len(tu_asm)
                stats[FunctionStatus.NonMatching] += len(tu_nonmatching)
                stats[FunctionStatus.Matching] += tu_func_count - len(tu_asm) - len(tu_nonmatching)

        for symbol in tu.symtab:
            if not should_consider_symbol(symbol):
                continue

            if tu.lang == TULang.ASM:
                stats[FunctionStatus.NotDecompiled] += 1
    
    print(stats)


if __name__ == '__main__':
    progress()