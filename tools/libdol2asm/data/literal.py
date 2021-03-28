import struct

from dataclasses import dataclass, field
from typing import List, Tuple

from ..builder import AsyncBuilder
from .. import util
from ..types import *
from .base import *


@dataclass(eq=False)
class Literal(ArbitraryData):
    literal_size: int = 0
    values: List[str] = field(default_factory=list)
    padding_values: List[str] = field(default_factory=list)

    @property
    def element_size(self):
        return self.literal_size

    def array_type(self):
        size = self.size // self.element_size
        padding = self.padding // self.element_size
        
        if size == 1 and padding == 0:
            return self.element_type()
        else:
            return PaddingArrayType.create(
                self.element_type(),
                self.size // self.element_size,
                self.padding // self.element_size)


    def literal_values_per_line(self):
        return 8

    async def export_declaration_body(self, exporter, builder: AsyncBuilder):
        line_length = self.literal_values_per_line()
        count = self.total_element_count
        if len(self.values) == 0:
            await builder.write(f";")
        elif count == 1:
            await builder.write(f" = {self.values[0]};")
        else:
            await builder.write(f" = {{")
            for values in util.chunks(self.values, line_length):
                line = ", ".join([x for x in values])
                await builder.write(f"\t{line},")
            if self.padding_values:
                await builder.write(f"\t/* padding */")
                for values in util.chunks(self.padding_values, line_length):
                    line = ", ".join([x for x in values])
                    await builder.write(f"\t{line},")
            await builder.write(f"}};")

@dataclass(eq=False)
class Integer(Literal):
    @staticmethod
    def create_with_data(identifier: Identifier, data_type: Type, literal_size: int, addr: int, data: bytearray, values: List[str], padding_data: bytearray,  padding_values: List[str]):
        return Integer(
            identifier=identifier,
            literal_size=literal_size,
            addr=addr,
            size=literal_size * len(values),
            values=values,
            data=data,
            data_type=data_type,
            padding=literal_size * len(padding_values),
            padding_values=padding_values,
            padding_data=padding_data
        )

    @staticmethod
    def create_without_data(identifier: Identifier, data_type: Type, literal_size: int, addr: int, size: int, padding: int):
        return Integer(
            identifier=identifier,
            literal_size=literal_size,
            addr=addr,
            size=size,
            values=[],
            data_type=data_type,
            padding=padding,
            padding_values=[]
        )

    @staticmethod
    def u32_from(data: bytearray) -> List[int]:
        assert len(data) % 4 == 0
        return [ 
            struct.unpack('>I', x)[0] 
            for x in util.chunks(data, 4)
        ]

    @staticmethod
    def create_u32(identifier: Identifier, addr: int, data: bytearray, values: List[int], padding_data: bytearray, padding_values: List[int]):
        str_values = [ f"0x{x:08X}" for x in values ]
        str_padding_values = [ f"0x{x:08X}" for x in padding_values ]
        return Integer.create_with_data(identifier, U32, 4, addr, data, str_values, padding_data, str_padding_values)

    @staticmethod
    def u16_from(data: bytearray) -> List[int]:
        assert len(data) % 2 == 0
        return [ 
            struct.unpack('>H', x)[0] 
            for x in util.chunks(data, 2)
        ]

    @staticmethod
    def create_u16(identifier: Identifier, addr: int, data: bytearray, values: List[int], padding_data: bytearray, padding_values: List[int]):
        str_values = [ f"0x{x:04X}" for x in values ]
        str_padding_values = [ f"0x{x:04X}" for x in padding_values ]
        return Integer.create_with_data(identifier, U16, 2, addr, data, str_values, padding_data, str_padding_values)




@dataclass(eq=False)
class FloatingPoint(Literal):
    @staticmethod
    def create_with_data(identifier: Identifier, data_type: Type, literal_size: int, addr: int, values: List[str], padding_values: List[str]):
        return FloatingPoint(
            identifier=identifier,
            literal_size=literal_size,
            addr=addr,
            size=literal_size * len(values),
            values=values,
            data_type=data_type,
            padding=literal_size * len(padding_values),
            padding_values=padding_values
        )

    @staticmethod
    def create_without_data(identifier: Identifier, data_type: Type, literal_size: int, addr: int, size: int, padding: int):
        return FloatingPoint(
            identifier=identifier,
            literal_size=literal_size,
            addr=addr,
            size=size,
            values=[],
            data_type=data_type,
            padding=padding,
            padding_values=[]
        )

    """
        single floating-point (32-bit)
    """

    @staticmethod
    def f32_from(data: bytearray) -> List[Tuple[int,float]]:
        assert len(data) % 4 == 0
        return [ 
            (struct.unpack('>I', x)[0], util.bytes2float32(x))
            for x in util.chunks(data, 4)
        ]

    @staticmethod
    def string_float32(data: List[Tuple[int,float]]) -> List[str]:
        values = []
        for u32, f32 in data:
            special_value = util.special_float32(f32)
            if special_value:
                values.append(special_value)
                # TODO: Add support for FLOAT_NAN
                if special_value == "FLOAT_NAN":
                    return None 
            elif f32 in util.float32_exact:
                fractions = util.float32_exact[f32]
                values.append(f"{fractions[0]}.0f / {fractions[1]}.0f")
            else:
                values.append(f"{f32}f")
        return values

    @staticmethod
    def create_f32(identifier: Identifier, addr: int, values: List[Tuple[int,float]], padding_values: List[Tuple[int,float]]):
        str_values = FloatingPoint.string_float32(values)
        str_padding_values = FloatingPoint.string_float32(padding_values)
        return FloatingPoint.create_with_data(identifier, F32, 4, addr, str_values, str_padding_values)

    @staticmethod
    def create_f32_without_data(identifier: Identifier, addr: int, size: int, padding: int):
        return FloatingPoint.create_without_data(identifier, F32, 4, addr, size, padding)

    """
        double floating-point 64-bit
    """

    @staticmethod
    def f64_from(data: bytearray) -> List[Tuple[int,float]]:
        assert len(data) % 8 == 0
        return [ 
            (struct.unpack('>Q', x)[0], util.bytes2float64(x))
            for x in util.chunks(data, 8)
        ]

    @staticmethod
    def string_float64(data: List[Tuple[int,float]]) -> List[str]:
        values = []
        for u64, f64 in data:
            special_value = util.special_float64(f64)
            if special_value:
                values.append(special_value)
            elif f64 in util.float64_exact:
                fractions = util.float64_exact[f64]
                values.append(f"{fractions[0]}.0 / {fractions[1]}.0")
            else:
                comment = ""
                if u64 == 0x43300000_00000000:
                    comment = " /* cast u32 to float */"
                elif u64 == 0x43300000_80000000:
                    comment = " /* cast s32 to float */"
                values.append(f"{f64}{comment}")
        return values

    @staticmethod
    def create_f64(identifier: Identifier, addr: int, values: List[Tuple[int,float]], padding_values: List[Tuple[int,float]]):
        str_values = FloatingPoint.string_float64(values)
        str_padding_values = FloatingPoint.string_float64(padding_values)
        return FloatingPoint.create_with_data(identifier, F64, 8, addr, str_values, str_padding_values)

    @staticmethod
    def create_f64_without_data(identifier: Identifier, addr: int, size: int, padding: int):
        return FloatingPoint.create_without_data(identifier, F64, 8, addr, size, padding)
