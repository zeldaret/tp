
from . import util
from . import linker_map

from .disassemble import Access, BranchAccess, FloatLoadAccess, DoubleLoadAccess
from .data import *


def string_decode(data: bytearray) -> Tuple[str, str]:
    """ Try to decode the data using utf-8 or shift-jis """

    try:
        result = data[:-1].decode("utf-8")
        return result, "utf-8"
    except:
        pass

    try:
        result = data[:-1].decode("shift_jisx0213")
        return result, "shift-jis"
    except:
        pass

    return None, None


def string_from_data(addr: int, data: bytearray, string_base: StringBase) -> String:
    """ Create string symbol from an address and data """

    string, encoding = string_decode(data)
    assert encoding != None

    return String(
        Identifier("stringBase", addr, None),
        addr,
        len(data),
        data_type=PointerType(ConstType(CHAR)),
        encoding=encoding,
        decoded_string=string,
        string_base=string_base)


def zero_initialized_symbol(section: Section,
                            identifier: Identifier,
                            symbol: linker_map.Symbol,
                            padding: int) -> List[Symbol]:
    """ Create symbols that have no data (zero-initialized) """
    if isinstance(symbol.access, FloatLoadAccess):
        is_float_constant = identifier.name and identifier.name.startswith(
            "__float_")
        if symbol.size >= 4 and symbol.size % 4 == 0 and not is_float_constant:
            return [FloatingPoint.create_f32_without_data(identifier, symbol.addr, symbol.size, padding)]

    if isinstance(symbol.access, DoubleLoadAccess):
        if symbol.size >= 8 and symbol.size % 8 == 0:
            return [FloatingPoint.create_f64_without_data(identifier, symbol.addr, symbol.size, padding)]

    return [ArbitraryData.create_without_data(identifier, symbol.addr, symbol.size, padding)]


def value_initialized_symbol(section: Section,
                             identifier: Identifier,
                             offset: int,
                             data: bytearray,
                             padding_data: bytearray,
                             symbol: linker_map.Symbol) -> List[Symbol]:
    """ Create symbols from data. This will try to find strings, integers, floats, and other special symbols. """

    # all virtual tables begin with "__vt"
    if symbol.name and symbol.name.startswith("__vt"):
        assert section.name == ".data"
        assert symbol.size % 4 == 0
        assert len(padding_data) % 4 == 0
        assert sum(padding_data) == 0

        return [VirtualTable.create(
            identifier,
            symbol.addr,
            data,
            padding_data)]

    # strings will always be in rodata
    if section.name == ".rodata":
        if symbol.name == "@stringBase0":
            string_base = StringBase(
                    Identifier("stringBase", symbol.addr, symbol.name),
                    symbol.addr,
                    0,
                    data = bytes(),
                    data_type=PointerType(ConstType(CHAR)),
                    padding=0,
                    padding_data=bytes(),
                    strings = [])

            strings = [ string_base ]
            split_data = list(util.magicsplit(data, 0))
            x_offset = 0
            for x in split_data[:-1]:
                str_addr = symbol.addr + x_offset
                str_length = len(x) + 1
                str_data = bytes(x + [0])
                strings.append(string_from_data(
                    str_addr, str_data, string_base))
                x_offset += str_length
            #return [StringBase.create(symbol, strings, data, padding_data)]

            strings[-1].padding = len(padding_data)
            strings[-1].padding_data = padding_data

            return strings

    if section.name == ".init":
        if symbol.name == "_rom_copy_info" or symbol.name == "_bss_init_info":
            assert len(padding_data) == 0
            return [LinkerGenerated.create(identifier, symbol.addr, symbol.size)]

    # both .ctors and .dtors symbols are special
    if section.name == ".ctors":
        if symbol.name == "__init_cpp_exceptions_reference":
            assert len(data) == 4
            assert len(padding_data) % 4 == 0
            constructor_count = len(padding_data) // 4
            constructors = list(struct.unpack(
                ">" + "I" * constructor_count, padding_data))

            count = 0
            for x in constructors:
                if x == 0:
                    break
                count += 1

            _ctors_data = padding_data[0:count*4]

            __init_cpp_exceptions_reference = ReferenceArray.create(
                identifier,
                symbol.addr,
                data,
                bytearray(),
                always_extern=True)

            # instead of creating the _ctors ourself we let the linker do it
            _ctors = LinkerGenerated(
                identifier=Identifier("_xx", symbol.addr + 4, "_ctors"),
                addr=symbol.addr + 4,
                size=len(_ctors_data),
                data=[],
                data_type=PointerType(VOID),
                padding=0,
                padding_data=[],
                zero_length=True,
                always_extern=True)

            return [
                __init_cpp_exceptions_reference,
                _ctors
            ]
        elif not symbol.name:
            assert len(data) % 4 == 0
            assert len(padding_data) == 0
            _ctors = LinkerGenerated(
                identifier=Identifier("_xx", symbol.addr, "_ctors"),
                addr=symbol.addr,
                size=len(data),
                data=[],
                data_type=PointerType(VOID),
                padding=0,
                padding_data=[],
                zero_length=True,
                always_extern=True)

            return [_ctors]

    if section.name == ".dtors":
        if symbol.name == "__destroy_global_chain_reference":
            assert len(data) == 4
            __destroy_global_chain_reference = ReferenceArray.create(
                identifier, symbol.addr, data, bytearray(),
                always_extern=True)

            if len(padding_data) == 0:
                return [__destroy_global_chain_reference]

            # _dtors
            _dtors = LinkerGenerated(
                identifier=Identifier("_xx", symbol.addr + 4, "_dtors"),
                addr=symbol.addr + 4,
                size=len(padding_data),
                data=[],
                data_type=PointerType(VOID),
                padding=0,
                padding_data=[],
                zero_length=True,
                always_extern=True)

            return [
                __destroy_global_chain_reference,
                _dtors
            ]
        elif symbol.name == "__fini_cpp_exceptions_reference":
            assert len(data) == 4
            assert len(padding_data) == 0

            __fini_cpp_exceptions_reference = ReferenceArray.create(
                identifier, symbol.addr, data, bytearray(),
                always_extern=True)

            __dtors_null_terminator = ReferenceArray.create(
                Identifier("_xx", symbol.addr + 4, "__dtors_null_terminator"),
                symbol.addr + 4, bytearray([0, 0, 0, 0]), bytearray(),
                always_extern=True)

            return [
                __fini_cpp_exceptions_reference,
                __dtors_null_terminator,
            ]
        elif not symbol.name:
            assert len(data) % 4 == 0
            assert len(padding_data) == 0
            _ctors = LinkerGenerated(
                identifier=Identifier("_xx", symbol.addr, "_dtors"),
                addr=symbol.addr,
                size=len(data),
                data=[],
                data_type=PointerType(VOID),
                padding=0,
                padding_data=[],
                zero_length=True,
                always_extern=True)

            return [_ctors]
    if isinstance(symbol.access, FloatLoadAccess):
        is_float_constant = identifier.name and identifier.name.startswith(
            "__float_")
        if symbol.size >= 4 and symbol.size % 4 == 0 and not is_float_constant:
            values = FloatingPoint.f32_from(data)
            padding_values = FloatingPoint.f32_from(padding_data)

            # Metrowerks is very smart... if you initialize a float with 0.0f, the storage will be moved to the one of the .bss sections.
            # Generated literals will always be (for floats and doubles) in the .sdata2 section. Thus, if we are a literal, we cannot
            # use the value 0.0f.
            is_zero = (len(values) == 1 and values[0][0] == 0)
            is_zero_and_no_padding = is_zero and len(padding_values) == 0
            if len(values) > 0 and not is_zero_and_no_padding:
                return [FloatingPoint.create_f32(identifier, symbol.addr, values, padding_values)]

    if isinstance(symbol.access, DoubleLoadAccess):
        if symbol.size >= 8 and symbol.size % 8 == 0:
            values = FloatingPoint.f64_from(data)
            padding_values = FloatingPoint.f64_from(padding_data)

            # Same comments as for the float case.
            is_zero = (len(values) == 1 and values[0][0] == 0)
            is_zero_and_no_padding = is_zero and len(padding_values) == 0
            if len(values) > 0 and not is_zero_and_no_padding:
                return [FloatingPoint.create_f64(identifier, symbol.addr, values, padding_values)]

    if symbol.size == 4 and len(padding_data) % 4 == 0:
        if identifier.name and "$" in identifier.name:
            # TODO: symbols with the character $ are often arrays.
            pass
        else:
            values = Integer.u32_from(data)
            float_values = FloatingPoint.f32_from(data)
            if values[0] != 0:
                f32 = float_values[0][1]
                if util.is_nice_float32(f32) or f32 in util.float32_exact:
                    padding_values = FloatingPoint.f32_from(padding_data)
                    return [FloatingPoint.create_f32(identifier, symbol.addr, float_values, padding_values)]
                else:
                    padding_values = Integer.u32_from(padding_data)
                    return [Integer.create_u32(identifier, symbol.addr, data, values, padding_data, padding_values)]

    if symbol.size == 2 and len(padding_data) % 2 == 0:
        if identifier.name and "$" in identifier.name:
            # TODO: symbols with the character $ are often arrays.
            pass
        else:
            values = Integer.u16_from(data)
            padding_values = Integer.u16_from(padding_data)
            if values[0] != 0:
                return [Integer.create_u16(identifier, symbol.addr, data, values, padding_data, padding_values)]

    # otherwise export it as raw initialized data
    return [ArbitraryData.create_with_data(identifier, symbol.addr, data, padding_data)]


def from_group(section: Section, group: List[linker_map.Symbol]) -> List[Symbol]:
    """ Create symbol from a group of linker map symbols """
    assert len(group) == 1
    first = group[0]
    if first.size <= 0:
        return []

    identifier = Identifier("data", first.addr, first.name)
    if not section.data:
        return zero_initialized_symbol(section, identifier, first, first.padding)
    else:
        data = bytes()
        padding_data = bytes()
        data = section.get_data(first.start, first.end)
        if first.padding > 0:
            padding_data = bytes()
            padding_data = section.get_data(first.end, first.end+first.padding)

        assert len(data) == first.size
        assert len(padding_data) == first.padding
        return value_initialized_symbol(section, identifier, first.addr, data, padding_data, first)


def groups_from_symbols(symbols: List[linker_map.Symbol]) -> List[List[linker_map.Symbol]]:
    """ Group symbols based on the 'is_function' flag """

    group = []
    groups = []
    for symbol in symbols:
        if symbol.is_function:
            if group:
                groups.append(group)
            group = [symbol]
            continue

        if group and symbol.name == None:
            group.append(symbol)
        else:
            if group:
                groups.append(group)
                group = []
            groups.append([symbol])

    if group:
        groups.append(group)
        group = []

    return groups
