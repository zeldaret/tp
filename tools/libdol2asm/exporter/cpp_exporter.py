import time
import os
import sys
import asyncio
import librel

from pathlib import Path
from collections import defaultdict
from typing import List, Dict
from dataclasses import dataclass, field

from .. import util
from .. import settings

from ..builder import AsyncBuilder
from ..disassemble import *
from ..context import Context
from ..symbol_table import GlobalSymbolTable
from ..types import *
from ..data import *

from .types import *
from .cpp_asm_exporter import *


@dataclass
class CPPExporter:
    context: Context
    gst: GlobalSymbolTable
    tu: TranslationUnit = None

    async def export_symbol_header(self, builder: AsyncBuilder, symbol: Symbol):
        await builder.write("/* %08X-%08X %04X+%02X s=%i e=%i z=%i  %s %-10s %-60s */" % (
            symbol.start, symbol.end+symbol.padding, symbol.size, symbol.padding,
            symbol.reference_count.static, symbol.reference_count.extern, symbol.reference_count.rel,
            symbol.force_section,
            symbol._section, symbol.identifier.name))

    async def export_section_ctors(self, builder: AsyncBuilder, section: Section):
        await builder.write("#pragma section \".ctors$10\"")
        for symbol in section.symbols:
            if symbol.identifier.label == "__init_cpp_exceptions_reference":
                await self.export_symbol_header(builder, symbol)
                await symbol.export_declaration(self, builder)
                await builder.write("")
                break

        for symbol in section.symbols:
            if symbol.identifier.label == "_ctors":
                await self.export_symbol_header(builder, symbol)
                await symbol.export_declaration(self, builder)
                await builder.write("")
                break

        for symbol in section.symbols:
            if symbol.identifier.label == "__init_cpp_exceptions_reference":
                continue
            if symbol.identifier.label == "_ctors":
                continue
            await self.export_symbol_header(builder, symbol)
            await symbol.export_declaration(self, builder)
            await builder.write("")

    async def export_section_dtors(self, builder: AsyncBuilder, section: Section):
        await builder.write("#pragma section \".dtors$10\"")
        for symbol in section.symbols:
            if symbol.identifier.label == "__destroy_global_chain_reference":
                await self.export_symbol_header(builder, symbol)
                await symbol.export_declaration(self, builder)
                await builder.write("")
                break

        await builder.write("#pragma section \".dtors$15\"")
        for symbol in section.symbols:
            if symbol.identifier.label == "__fini_cpp_exceptions_reference":
                await self.export_symbol_header(builder, symbol)
                await symbol.export_declaration(self, builder)
                await builder.write("")
                break

        for symbol in section.symbols:
            if symbol.identifier.label == "__destroy_global_chain_reference":
                continue
            if symbol.identifier.label == "__fini_cpp_exceptions_reference":
                continue
            await self.export_symbol_header(builder, symbol)
            await symbol.export_declaration(self, builder)
            await builder.write("")

    async def export_declarations(self,
                                  builder: AsyncBuilder,
                                  tu: TranslationUnit,
                                  decl_references):
        order = {
            ".ctors": -2,
            ".dtors": -1,
            ".rodata": 0,
            ".data": 1,
            ".sdata": 2,
            ".sdata2": 3,
            ".bss": 4,
            ".sbss": 5,
            ".sbss2": 6,
            ".text": 7,
            ".init": 8
        }

        sections = list(tu.sections.values())
        sections.sort(key=lambda x: order[x.name]
                      if x.name in order else 10 + len(x.name))

        tasks = []
        for section in sections:
            section.function_files = set()
            if section.name == ".ctors":
                await builder.write("/* ############################################################################################## */")
                await self.export_section_ctors(builder, section)
            elif section.name == ".dtors":
                await builder.write("/* ############################################################################################## */")
                await self.export_section_dtors(builder, section)
            elif section.name == ".init":
                await builder.write("/* ############################################################################################## */")
                for symbol in section.symbols:
                    await self.export_symbol_header(builder, symbol)
                    await symbol.export_declaration(self, builder)
                    await builder.write("")
            else:
                section.symbols.sort(key=lambda x: x.addr)

        def add_references(used_symbols, parent, depth):
            for addr in parent.references:
                symbol = self.gst[-1, addr]
                if not symbol:
                    continue
                if isinstance(symbol, Function):
                    continue
                if not symbol in decl_references:
                    continue
                if symbol.addr > parent.addr and not isinstance(parent, Function) and symbol.is_static:
                    if not symbol in forward_used_symbols:
                        forward_used_symbols.add(symbol)
                        forward_symbols.append(symbol)
                if symbol in used_symbols:
                    continue
                used_symbols.add(symbol)
                symbols.append(symbol)
                if not symbol.require_forward_reference:
                    add_references(used_symbols, symbol, depth + 1)

        used_symbols = set()
        forward_used_symbols = set()
        function_symbols_groups = []
        for section in sections:
            if section.name == ".text":
                for function in section.symbols:
                    symbols = []
                    forward_symbols = []
                    add_references(used_symbols, function, 1)

                    # add missing references so that the order is still correct
                    missing_order_symbols = []
                    for symbol in symbols:
                        symbol_section = tu.sections[symbol._section]
                        for prev_symbol in symbol_section.symbols:
                            if prev_symbol == symbol:
                                break
                            if isinstance(prev_symbol, Function):
                                continue
                            if prev_symbol in used_symbols:
                                continue
                            add_references(used_symbols, prev_symbol, 1)
                            #add_relocations(used_symbols, prev_symbol, 1)
                            missing_order_symbols.append(prev_symbol)
                            used_symbols.add(prev_symbol)

                    symbols.extend(missing_order_symbols)
                    symbols.sort(key=lambda x: (x.addr, x.size))
                    forward_symbols.sort(key=lambda x: (x.addr, x.size))
                    function_symbols_groups.append(
                        (function, symbols, forward_symbols))

        for function, symbols, forward_symbols in function_symbols_groups:
            # new section of symbols followed by a function
            if len(symbols) > 0:
                await builder.write("/* ############################################################################################## */")

            for symbol in forward_symbols:
                symbol.require_forward_reference = True
                await self.export_symbol_header(builder, symbol)
                await symbol.export_forward_references(self, builder, c_export=True)
                await builder.write("")

            unreferenced_decls = 0
            for symbol in symbols:
                await self.export_symbol_header(builder, symbol)
                #rfs = symbol.internal_references(self.context, self.gst)
                # for r in rfs:
                #    await builder.write(f"/* {r} */")

                await symbol.export_declaration(self, builder)
                await builder.write("")

            await self.export_symbol_header(builder, function)
            await function.export_declaration(self, builder)
            await builder.write("")

        unreferenced_decls = 0
        for section in sections:
            if section.name == ".ctors" or section.name == ".dtors" or section.name == ".init":
                continue
            for symbol in section.symbols:
                if isinstance(symbol, Function):
                    continue
                if symbol in used_symbols:
                    continue

                if unreferenced_decls == 0:
                    await builder.write("/* ############################################################################################## */")

                unreferenced_decls += 1
                await self.export_symbol_header(builder, symbol)
                await symbol.export_declaration(self, builder)
                await builder.write("")

    def find_references(self,
                        section: Section,
                        decl_references: Set[Symbol],
                        references: Set[int],
                        relocation_symbols: Set[Symbol]):
        for symbol in section.symbols:
            decl_references.add(symbol)
            references.update(symbol.references)

    async def export_translation_unit(self,
                                      tu: TranslationUnit,
                                      path: Path,
                                      include_path: Path,
                                      relative_include_path: Path):
        self.tu = tu

        # Skip empty translation units
        # TODO: To this test earlier
        if len(tu.sections) == 0:
            return []
        if sum([len(x.symbols) for x in tu.sections.values()]) == 0:
            return []

        tasks = []
        await util.create_dirs_for_file(path)
        await util.create_dirs_for_file(include_path)

        async with AsyncBuilder(include_path) as builder:
            guard = tu.name.replace(
                "/", "_").replace("-", "_").replace(".", "").upper() + "_H"
            await builder.write(f"#ifndef {guard}")
            await builder.write(f"#define {guard}")
            await builder.write(f"")
            await builder.write("#include \"dolphin/types.h\"")
            await builder.write(f"")
            await builder.write(f"")

            await builder.write(f"#endif /* {guard} */")

        # find all references
        decl_references = set()
        internal_references = set()
        relocation_symbols = set()
        for section in tu.sections.values():
            self.find_references(section, decl_references,
                                 internal_references, relocation_symbols)

        forward_references = list(decl_references)
        forward_references.sort(key=lambda x: x.addr)

        symbol_references = self.gst.all(internal_references)
        external_references = list(symbol_references - decl_references)
        external_references.sort(key=lambda x: x.addr)

        type_list = TypeList(self.context)
        type_list.build(forward_references)
        type_list.build(external_references)

        async with AsyncBuilder(path) as builder:
            await builder.write("// ")
            await builder.write("// Generated By: dol2asm")
            await builder.write(f"// Translation Unit: {tu.name}")
            await builder.write("// ")

            await builder.write("")
            await builder.write("#include \"dol2asm.h\"")
            await builder.write("#include \"dolphin/types.h\"")
            await builder.write(f"#include \"{relative_include_path}\"")
            await builder.write("")

            if type_list.has_types():
                await builder.write("// ")
                await builder.write("// Types:")
                await builder.write("// ")
                await builder.write("")

                await type_list.export(builder)

            await builder.write("// ")
            await builder.write("// Forward References:")
            await builder.write("// ")
            await builder.write("")

            for symbol in forward_references:
                await symbol.export_forward_references(self, builder)
            await builder.write("")

            for symbol in forward_references:
                await symbol.export_forward_references(self, builder, c_export=True)
            await builder.write("")

            await builder.write("// ")
            await builder.write("// External References:")
            await builder.write("// ")
            await builder.write("")

            for symbol in external_references:
                await symbol.export_forward_references(self, builder)
            await builder.write("")

            for symbol in external_references:
                await symbol.export_forward_references(self, builder, c_export=True)
            await builder.write("")

            await builder.write("// ")
            await builder.write("// Declarations:")
            await builder.write("// ")
            await builder.write("")

            await self.export_declarations(builder, tu, decl_references)

        self.context.debug(f"generated cpp: '{path}' ({tu.name})")


def export_translation_unit_group(context: Context, tus: List[Tuple[TranslationUnit, Path, Path, Path]], symbol_table: GlobalSymbolTable):
    async_tasks = [
        CPPExporter(context, symbol_table).export_translation_unit(*tu)
        for tu in tus
    ]

    async def wait_all():
        # for task in async_tasks:
        #    await task
        await asyncio.gather(*async_tasks)

    asyncio.run(wait_all())


async def export_function_inner(function: Function, symbol_table: GlobalSymbolTable, context: Context, relocations: Dict[int, "librel.Relocation"], no_file_generation: bool):
    if no_file_generation:
        if function.include_path.exists():
            return

    block_map = dict()
    for block in function.blocks:
        block_map[block.addr] = block

    async with AsyncBuilder(function.include_path) as include_builder:
        cppd = CPPDisassembler(include_builder, function,
                               block_map, symbol_table, relocations, context)

        await cppd.async_execute(function.addr, function.data, function.size)

    context.debug(f"generated asm: '{function.include_path}'")


def export_function(context: Context, section: Section, functions: List[Symbol], symbol_table: GlobalSymbolTable, no_file_generation: bool):
    async_tasks = [
        export_function_inner(*function,
                              symbol_table=symbol_table,
                              no_file_generation=no_file_generation,
                              context=context,
                              relocations=section.relocations)
        for function in functions
    ]

    async def wait_all():
        # for task in async_tasks:
        #    await task
        await asyncio.gather(*async_tasks)

    asyncio.run(wait_all())
