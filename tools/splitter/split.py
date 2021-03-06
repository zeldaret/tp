"""
split.py - 202x erin moon for zeldaret
"""

from typing import Iterable, List
from dataclasses import dataclass
from pathlib import Path, PosixPath
from textwrap import dedent
from loguru import logger
from datetime import datetime
import re
import click
from asm_parser import asm, Emittable, Global, Label, Line, BlockComment, Instruction
from demangle import parse_framework_map, demangle
from util import PathPath, pairwise
from pprint import pprint
import pickle
import IPython

SDA_BASE = 0x80458580
SDA2_BASE = 0x80459A00

__version__ = 'v0.4'


def function_global_search(lines: List[Line]) -> Iterable[Line]:
    i = 0
    while i < len(lines):
        if isinstance(lines[i].body, Global):
            sym = lines[i].body.symbol
            if isinstance(lines[i + 1].body, Label) and lines[i + 1].body.symbol == sym:
                yield lines[i]
            i += 2
        else:
            i += 1


def emit_lines(lines: List[Line]) -> str:
    return '\n'.join([line.emit() for line in lines])


def comment_out(line: Line) -> Line:
    return Line(line.index, [BlockComment(line.emit())], None)


def fix_sda_base_add(line: Line) -> Line:
    if 'SDA' in line.body.operands[2]:
        ops = line.body.operands[2].split('-')
        lbl_name = ops[0]
        if ops[1] == '_SDA_BASE_':
            sda_reg = 'r13'
        elif ops[1] == '_SDA2_BASE_':
            sda_reg = 'r2'
        else:
            logger.error('Unknown SDABASE!')
            return line

        line.body.opcode = 'la'
        line.body.operands = [line.body.operands[0], f'{lbl_name}({sda_reg})']
    return line

QUANT_REG_RE = re.compile(r'qr(\d+)')
def patch_gqrs(line: Line) -> Line:
    line.body.operands = [QUANT_REG_RE.sub(r'\1', o) for o in line.body.operands]
    
    return line

@dataclass
class Function:
    name: str
    addr: int
    lines: List[Line]

    @property
    def line_count(self):
        return len(self.lines)

    @property
    def filename(self) -> str:
        return f'func_{self.addr:X}.s'

    def include_path(self, base: Path) -> str:
        return str(PosixPath(base) / PosixPath(self.filename))


def find_functions(lines: List[Line], framework_map) -> Iterable[Function]:
    for func_global_line, next_func_global_line in pairwise(
        function_global_search(lines)
    ):
        # some blocks weren't properly split, use the map to find missing functions
        fr = func_global_line.index + 2
        # if no next global, to = None => end of file
        to = next_func_global_line and next_func_global_line.index
        func_lines = lines[fr:to]
        func_idx = []
        for idx, line in enumerate(func_lines):
            if isinstance(line.body, Instruction):
                addr = int(line.content[0].text.strip().split()[0], 16)
                if f'{addr:x}' in framework_map:
                    func_idx.append(idx)

        for start_idx, end_idx in pairwise(func_idx):
            sub_func_lines = func_lines[
                start_idx : (len(func_lines) if end_idx == None else end_idx)
            ]

            addr = int(sub_func_lines[0].content[0].text.strip().split()[0], 16)

            yield Function(
                name=func_global_line.body.symbol
                if start_idx == 0
                else f'func_{addr:X}',
                addr=addr,
                lines=sub_func_lines,
            )


def emit_cxx_asmfn(inc_base: Path, func: Function) -> str:
    return dedent(
        '''\
        asm void {name}(void) {{
            nofralloc
            #include "{inc}"
        }}'''.format(
            name=func.name, inc=func.include_path(inc_base)
        )
    )


def emit_cxx_extern_fns(tu_file: str, labels: Iterable[str]) -> str:
    def decl(label):
        return f'void {label}(void);'

    defs = '\n    '.join(decl(label) for label in sorted(labels))

    return (
        f'// additional symbols needed for {tu_file}\n'
        f'// autogenerated by split.py {__version__} at {datetime.utcnow()}\n'
        'extern "C" {\n'
        '    ' + defs + '\n}'
    )


def emit_cxx_extern_vars(tu_file: str, labels: Iterable[str]) -> str:
    def decl(label):
        return f'extern u8 {label};'

    return (
        f'// additional symbols needed for {tu_file}\n'
        f'// autogenerated by split.py {__version__} at {datetime.utcnow()}\n'
        + '\n'.join(decl(label) for label in sorted(labels))
        + '\n'
    )


@click.command()
@click.argument('src', type=PathPath(file_okay=True, dir_okay=False, exists=True))
@click.argument('cxx_out', type=PathPath(file_okay=True, dir_okay=False))
@click.option(
    '--funcs-out',
    type=PathPath(file_okay=False, dir_okay=True),
    default='include/funcs',
)
@click.option('--s-include-base', type=str, default='funcs')
@click.option(
    '--framework-map-file',
    type=PathPath(file_okay=True, dir_okay=False),
    default='frameworkF.map',
)
@click.option(
    '--ldscript-file',
    type=PathPath(file_okay=True, dir_okay=False),
    default='ldscript.lcf',
)
@click.option('--from-line', type=int)
@click.option('--to-line', type=int)
@click.option('--preparsed', is_flag=True)
@click.option('--forceactive',
    type=click.Choice(['all', 'none', 'missingfunc']), default='missingfunc')
def split(
    src,
    cxx_out,
    funcs_out,
    s_include_base,
    framework_map_file,
    ldscript_file,
    from_line,
    to_line,
    preparsed,
    forceactive
):
    funcs_out.mkdir(exist_ok=True, parents=True)

    if preparsed:
        logger.info('loading preparsed assembly')
        with src.open('rb') as f:
            lines = pickle.load(f)
    else:
        logger.info('parsing assembly')
        lines = asm.parse(src.read_text())
        lines = lines[
            (from_line - 1 if from_line else 0) : (to_line - 1 if to_line else -1)
        ]

    logger.info('parsing map file')
    framework_map = parse_framework_map(framework_map_file)
    logger.debug(f'loaded {len(framework_map)} symbols from map')

    logger.info('reading ldscript')
    ldscript_file_content = ldscript_file.read_text()
    new_ldfuncs = []

    # -- get all defined labels and jump targets
    jumped_labels = set()
    defined_labels = set()

    logger.info('scanning for branch targets')
    for line in lines:
        if isinstance(line.body, Label):
            defined_labels.add(line.body.symbol)
        if isinstance(line.body, Instruction):
            if line.body.opcode[0] == 'b' and line.body.operands != []:  # branch
                jumped_labels.add(line.body.operands[0])  # jump target

    # -- find everything of the form lbl_[hex] that's in an operand on the RHS of a l* instruction
    #    this is a relatively okay assumption given that any var that's *not* of the form lbl_ has
    #    probably already been renamed and thus is exported in variables.h
    LBL_RE = re.compile(r'lbl_[0-9A-F]+')

    def find_labels_in_operands(operands):
        for operand in operands:
            if match := LBL_RE.search(operand):
                yield match.group()

    logger.info('scanning for load/store target labels')
    loaded_labels = set()
    for line in lines:
        if isinstance(line.body, Instruction):
            if line.body.opcode[0] in {'l', 's'} or line.body.opcode == 'addi':  # load and store instructions, ish. Also addi for loading SDA addresses
                loaded_labels |= set(find_labels_in_operands(line.body.operands))

    # -- find all defined functions and split them
    functions = list(find_functions(lines, framework_map))
    logger.info('splitting functions')
    for func in functions:

        logger.debug(
            f'working on function {func.name} @ {func.addr:X} with {func.line_count} lines'
        )

        # comment out .globals
        func.lines = [
            comment_out(line) if isinstance(line.body, Global) else line
            for line in func.lines
        ]

        # fix SDA_BASE addi
        func.lines = [
            fix_sda_base_add(line)
            if isinstance(line.body, Instruction)
            and line.body.opcode == 'addi'
            else line
            for line in func.lines
        ]

        # remove GQR mnemonics
        func.lines = [
            patch_gqrs(line)
            if isinstance(line.body, Instruction)
            and line.body.opcode.startswith('psq_')
            else line
            for line in func.lines
        ]

        # check if needs to be defined in ldscript
        if forceactive != 'none':
            if not func.name in ldscript_file_content and (forceactive=='all' or func.name.startswith('func_')):
                new_ldfuncs.append(func.name)

        with open(out_path := funcs_out / func.filename, 'w') as f:
            logger.debug(f'emitting {out_path}')
            f.write(emit_lines(func.lines))

    # -- dump new labels to functions.h
    logger.info('dumping labels to extern functions header')
    func_labels = jumped_labels - defined_labels
    # add in everything we def to make sure asm can get backrefs
    for func in functions:
        func_labels.add(func.name)

    # -- write asm stubs to cxx_out (could've done this as part of previous loop but imo this is cleaner)
    logger.info(f'emitting c++ asm stubs to {cxx_out}')
    with open(cxx_out, 'w') as f:
        f.write(
            f'/* {cxx_out.name} autogenerated by split.py {__version__} at {datetime.utcnow()} */\n\n'
        )
        f.write('#include "global.h"\n\n')

        # extern functions
        f.write(emit_cxx_extern_fns(cxx_out.name, func_labels))
        f.write('\n\n')
        
        # extern variables
        f.write(emit_cxx_extern_vars(cxx_out.name, loaded_labels))
        f.write('\n\n')

        f.write('extern "C" {\n')
        for func in functions:
            logger.debug(f'emitting asm stub for {func.name}')
            mangled_func_name = framework_map[f'{func.addr:x}']
            f.write(f'// {mangled_func_name}\n')
            try:
                demangled_func_name = demangle(mangled_func_name)
                f.write(f'// {demangled_func_name}\n')
            except Exception as e:
                logger.warning(f"could not demangle symbol '{mangled_func_name}': {e}")

            f.write(emit_cxx_asmfn(s_include_base, func))
            f.write('\n\n')

        f.write('};\n')  # extern C end

    # -- make defined functions FORCEACTIVE in ldscript.lcf
    logger.info(f'writing to FORCEACTIVE in linker script')
    forceactive_start = ldscript_file_content.find('FORCEACTIVE')
    forceactive_end = ldscript_file_content.find('}', forceactive_start)
    for func in new_ldfuncs:
        ldscript_file_content = (
            ldscript_file_content[:forceactive_end]
            + func
            + '\n'
            + ldscript_file_content[forceactive_end:]
        )
    ldscript_file.write_text(ldscript_file_content)


if __name__ == '__main__':
    split()
