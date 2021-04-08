import struct

from capstone import *
from capstone.ppc import *

from . import linker_map
from . import disassemble
from .types import *
from .data import *

# TODO: What is faster to use here? capstone or doing it our self?


def is_blr(data: bytearray) -> bool:
    if len(data) < 4:
        return False
    return data[0] == 0x4E and data[1] == 0x80 and data[2] == 0x00 and data[3] == 0x20


def is_li_r3_XXXX(data: bytearray) -> bool:
    if len(data) < 4:
        return False
    return data[0] == 0x38 and data[1] == 0x60


def is_lwz_r3_XXXX_r(data: bytearray, i: int) -> bool:
    if len(data) < 4:
        return False
    return data[0] == 0x80 and data[1] == 0x60 + i


def is_lwz_r3_XXXX(data: bytearray) -> bool:
    return is_lwz_r3_XXXX_r(data, 3)


def is_lhz_r3_XXXX_r(data: bytearray, i: int) -> bool:
    if len(data) < 4:
        return False
    return data[0] == 0xa0 and data[1] == 0x60 + i


def is_lhz_r3_XXXX(data: bytearray) -> bool:
    return is_lhz_r3_XXXX_r(data, 3)


def is_lha_r3_XXXX_r(data: bytearray, i: int) -> bool:
    if len(data) < 4:
        return False
    return data[0] == 0xa8 and data[1] == 0x60 + i


def is_lha_r3_XXXX(data: bytearray) -> bool:
    return is_lha_r3_XXXX_r(data, 3)


def is_lbz_r3_XXXX_r(data: bytearray, i: int) -> bool:
    if len(data) < 4:
        return False
    return data[0] == 0x88 and data[1] == 0x60 + i


def is_lbz_r3_XXXX(data: bytearray) -> bool:
    return is_lbz_r3_XXXX_r(data, 3)


def ppc_inst(opcode, rA, rB):
    return ((opcode & 0x3F) << 10) | ((rA & 0x1F) << 5) | ((rB & 0x1F) << 0)


def is_addi_rArBIMM(data: bytearray, A: int, B: int) -> bool:
    if len(data) < 4:
        return False

    value = struct.unpack(">H", data[0:2])[0]
    return value == ppc_inst(14, A, B)


def get_short_value(data: bytearray) -> int:
    return struct.unpack(">h", data[2:4])[0]


def is_return_function(data: bytearray) -> bool:
    """
        blr
    """

    if len(data) != 4:
        return False
    return is_blr(data)


def is_return_integer_function(data: bytearray) -> bool:
    """
        li r3, XXXX
        blr
    """

    if len(data) != 8:
        return False
    return is_li_r3_XXXX(data) and is_blr(data[4:])


def is_load_first_param_function(data: bytearray) -> Tuple[bool, int, str]:
    """
        LOAD VALUE INTO r3
        blr
    """

    if len(data) != 8:
        return False, None, None
    if not is_blr(data[4:]):
        return False, None, None

    if is_lwz_r3_XXXX(data):
        return True, get_short_value(data), "u32"
    elif is_lhz_r3_XXXX(data):
        return True, get_short_value(data), "u16"
    elif is_lha_r3_XXXX(data):
        return True, get_short_value(data), "s16"
    elif is_lbz_r3_XXXX(data):
        return True, get_short_value(data), "u8"

    return False, None, None


def is_reference_first_param_function(data: bytearray) -> Tuple[bool, int, str]:
    """
        ADD VALUE with r3
        blr
    """

    if len(data) != 8:
        return False, None, None
    if not is_blr(data[4:]):
        return False, None, None

    if is_addi_rArBIMM(data, 3, 3):
        return True, get_short_value(data), "u8"

    return False, None, None


def is_load_global_function(data: bytearray) -> Tuple[bool, int, str, int]:
    """
        LOAD VALUE INTO r3 from r13/r2
        blr
    """

    if len(data) != 8:
        return False, None, None, None
    if not is_blr(data[4:]):
        return False, None, None, None

    for r in [2, 13]:
        if is_lwz_r3_XXXX_r(data, r):
            return True, get_short_value(data), "u32", r
        elif is_lha_r3_XXXX_r(data, r):
            return True, get_short_value(data), "s16", r
        elif is_lhz_r3_XXXX_r(data, r):
            return True, get_short_value(data), "u16", r
        elif is_lbz_r3_XXXX_r(data, r):
            return True, get_short_value(data), "u8", r

    return False, None, None, None

# TODO: @!game move
R2_ADDR = 0x80459A00
R13_ADDR = 0x80458580

RETURN_SYMBOL_LOAD_INSTS = {
    PPC_INS_LWZ,
    PPC_INS_LHZ,
    PPC_INS_LBZ,
}

RETURN_SYMBOL_TYPE = {
    PPC_INS_LWZ: U32,
    PPC_INS_LHZ: U16,
    PPC_INS_LBZ: U8,
}

def decompile_return_symbol_function(symbol, block, insts, symbol_table) -> Function:
    if len(insts) != 2:
        return None

    load = insts[0]
    ret = insts[1]

    if ret.id != PPC_INS_BLR:
        return None
    if not load.id in RETURN_SYMBOL_LOAD_INSTS:
        return None
    
    address = 0
    mem_base = load.operands[1].mem.base
    mem_disp = load.operands[1].mem.disp
    if mem_base == PPC_REG_R2:
        address = R2_ADDR + disassemble.sign_extend_16(mem_disp)
    elif mem_base == PPC_REG_R13:
        address = R13_ADDR + disassemble.sign_extend_16(mem_disp)
    else:
        return None

    return_symbol = symbol_table[-1, address]
    if not return_symbol:
        return None

    # structure does not work :(
    if isinstance(return_symbol, Structure):
        return None

    return SymbolReturnFunction(
        symbol.identifier,
        addr=symbol.addr,
        size=symbol.size,
        padding=symbol.padding,
        alignment=0,
        return_type=RETURN_SYMBOL_TYPE[load.id],
        symbol_addr=address)
    

def from_group(section: Section, group: List[linker_map.Symbol]) -> Function:
    """
    Create function from group of linker map symbols. If possible try to 
    identify simple easily decompilable functions.
    """

    if len(group) == 1:
        block = group[0]
        data = section.get_data(block.start, block.end)
        if len(data) >= 4 and len(data) < 16:   
            insts = list(disassemble.cs.disasm(data, block.start))

            if is_return_function(data):
                return [CustomReturnFunction(
                    Identifier("func", block.start, block.name),
                    addr=block.addr,
                    size=block.size,
                    padding=block.padding,
                    alignment=0,
                    return_type=VOID)]

            if is_return_integer_function(data):
                integer_value = get_short_value(data)
                if integer_value == 0:
                    value = "false"
                    type = BOOL
                elif integer_value == 1:
                    value = "true"
                    type = BOOL
                else:
                    value = f"{integer_value}"
                    type = S32

                return [CustomReturnFunction(
                    Identifier("func", block.start, block.name),
                    addr=block.addr,
                    size=block.size,
                    padding=block.padding,
                    alignment=0,
                    return_type=type,
                    return_value=value)]

    first = group[0]
    if first.size <= 0:
        return []

    if first.name and first.name.startswith("__sinit_"):
        return [SInitFunction.create(section, group)]

    # the function was not decompilable
    return [ASMFunction.create(section, group)]

def decompile_symbol(context, section, symbol, symbol_table, add_list, remove_list):
    if not isinstance(symbol, ASMFunction):
        return symbol
    if len(symbol.blocks) > 1:
        return symbol

    block = symbol.blocks[0]
    data = symbol.data[block.start-symbol.start:block.end-symbol.start]
    if len(data) <= 0 or len(data) > 16:
        return symbol

    insts = list(disassemble.cs.disasm(data, block.start))
    function = decompile_return_symbol_function(symbol, block, insts, symbol_table)
    if function:
        function.set_mlts(symbol._module, symbol._library, symbol._translation_unit, symbol._section)
        assert function.addr == symbol.addr
        assert function.size == symbol.size
        add_list.add(function)
        remove_list.discard(symbol)
        return function

    #if symbol.size == 8:
    #    context.debug(f"{symbol.addr:08X} {symbol.name}")

    return symbol

def decompile(context, libraries, symbol_table):
    remove_list = set()
    add_list = set()
    for lib in libraries:
        for tu in lib.translation_units.values():
            for section in tu.sections.values():
                if section.name != ".text" and section.name != ".init":
                    continue
                symbols = []
                for symbol in section.symbols:
                    symbols.append(decompile_symbol(context, section, symbol, symbol_table, add_list, remove_list))
                section.symbols = symbols
    return add_list, remove_list
        