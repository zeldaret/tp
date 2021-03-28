import struct

from dataclasses import dataclass, field
from typing import List, Tuple

from ..builder import AsyncBuilder
from .. import util
from .base import *
from .identifier import *
from .reference_array import *

@dataclass(eq=False)
class VirtualTable(ReferenceArray):
    def export_reference_value(self, symbol_table, index, addr) -> str:
        base = super().export_reference_value(symbol_table,index,  addr)
        if index == 0:
            base = f"{base} /* RTTI */"
        return base

    @staticmethod
    def create(identifier: Identifier, addr: int, data: bytearray, padding_data: bytearray) -> "VirtualTable":
        assert sum(padding_data) == 0
        assert len(data) % 4 == 0
        assert len(padding_data) % 4 == 0
        return VirtualTable(
            identifier=identifier,
            data_type=PointerType(VOID),
            addr=addr,
            data = data,
            size=len(data),
            padding_data = padding_data,
            padding = len(padding_data),
        )