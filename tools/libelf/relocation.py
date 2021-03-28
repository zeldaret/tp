
class RelocationException(Exception):
    def __init__(self, message):
        super().__init__(message)

class Relocation:
    def __init__(self, symbol, section, offset, addend):
        self.offset = offset
        self.addend = addend
        self.symbol = symbol
        self.section = section
        self.symbol.used += 1

    def size(self) -> bytes:
        fail("unknown relocation size")

    def calculate(self, prev) -> bytes:
        fail("cannot calculate relocation")

    def replace(self):
        if not self.section.data:
            return

        size = self.size()
        if size <= 0:
            fail("internal linker error: invalid relocation size: %i bytes (%s)" % (size, type(self).__name__))

        old = self.section.data[self.offset:self.offset+size]
        new = self.calculate(old)
        assert len(new) == size
        if len(new) > 0:
            self.section.data[self.offset:self.offset+size] = new


class R_PPC_NONE(Relocation):
    def __init__(self, symbol, section, offset, addend):
        super().__init__(symbol, section, offset, addend)

class R_PPC_ADDR32(Relocation):
    def __init__(self, symbol, section, offset, addend):
        super().__init__(symbol, section, offset, addend)

    def size(self) -> bytes:
        return 4

    def calculate(self, prev) -> bytes:
        P = self.section.getVirtualAddr(self.offset)
        value = self.symbol.addr + self.addend
        value32 = value & 0xFFFFFFFF
        try:
            return struct.pack(">I", value32)
        except:
            raise RelocationException("R_PPC_ADDR32: 0x%08X does not fit in relocation at 0x%08X" % (value, P))

class R_PPC_ADDR16(Relocation):
    def __init__(self, symbol, section, offset, addend):
        super().__init__(symbol, section, offset, addend)

    def size(self) -> bytes:
        return 2

    def calculate(self, prev) -> bytes:
        P = self.section.getVirtualAddr(self.offset)
        value = self.symbol.addr + self.addend
        value16 = value & 0xFFFF

        if self.symbol.name == "data_80450AF0":
            print("%04X" % value)
            print("%04X" % value16)

        try:
            return struct.pack(">H", value16)
        except:
            raise RelocationException("R_PPC_ADDR16: 0x%04X (%i) does not fit in relocation at 0x%08X" % (value16, value16, P))

class R_PPC_ADDR16_LO(Relocation):
    def __init__(self, symbol, section, offset, addend):
        super().__init__(symbol, section, offset, addend)

    def size(self) -> bytes:
        return 2

    def calculate(self, prev) -> bytes:
        P = self.section.getVirtualAddr(self.offset)
        value = self.symbol.addr + self.addend
        value16 = value & 0xFFFF
        try:
            return struct.pack(">H", value16)
        except:
            raise RelocationException("R_PPC_ADDR16_LO: 0x%04X (%i) does not fit in relocation at 0x%08X" % (value16, value16, P))

class R_PPC_ADDR16_HI(Relocation):
    def __init__(self, symbol, section, offset, addend):
        super().__init__(symbol, section, offset, addend)

    def size(self) -> bytes:
        return 2

    def calculate(self, prev) -> bytes:
        P = self.section.getVirtualAddr(self.offset)
        value = self.symbol.addr + self.addend
        value16 = (value >> 16) & 0xFFFF
        try:
            return struct.pack(">H", value16)
        except:
            raise RelocationException("R_PPC_ADDR16_HI: 0x%04X (%i) does not fit in relocation at 0x%08X" % (value16, value16, P))

class R_PPC_ADDR16_HA(Relocation):
    def __init__(self, symbol, section, offset, addend):
        super().__init__(symbol, section, offset, addend)

    def size(self) -> bytes:
        return 2

    def calculate(self, prev) -> bytes:
        P = self.section.getVirtualAddr(self.offset)
        value = self.symbol.addr + self.addend
        x = value & 0xFFFFFFFF
        ha = (x >> 16) + (1 if (x & 0x8000) else 0)
        ha16 = ha & 0xFFFF
        try:
            return struct.pack(">H", ha16)
        except:
            raise RelocationException("R_PPC_ADDR16_HA: 0x%04X (%i) does not fit in relocation at 0x%08X" % (ha16, ha16, P))

class R_PPC_REL24(Relocation):
    def __init__(self, symbol, section, offset, addend):
        super().__init__(symbol, section, offset, addend)

    def size(self) -> bytes:
        return 4

    def calculate(self, prev) -> bytes:
        P = self.section.getVirtualAddr(self.offset)
        A = self.addend
        S = self.symbol.addr
        R = (S + A - P) & 0xFFFFFFFF

        TM = (0b111111 << 26) & 0xFFFFFFFF
        BM = (0b11)
        try:
            if (R & BM) != 0:
                raise Exception()
            if (R & TM) != 0 and (R & TM) != TM:
                raise Exception()

            p32 = struct.unpack(">I", prev)[0]
            r24 = struct.pack(">I", p32 | (R & ~TM))
            return bytes(r24)
        except:
            raise RelocationException("R_PPC_REL24: 0x%08X does not fit in relocation at 0x%08X" % (R, P))

class R_PPC_REL14(Relocation):
    def __init__(self, symbol, section, offset, addend):
        super().__init__(symbol, section, offset, addend)

    def size(self) -> bytes:
        return 4

    def calculate(self, prev) -> bytes:
        P = self.section.getVirtualAddr(self.offset)
        A = self.addend
        S = self.symbol.addr
        R = (S + A - P) & 0xFFFFFFFF

        TM = 0b1111111111111111 << 16
        BM = 0b11
        try:
            if (R & BM) != 0:
                raise Exception()
            if (R & TM) != 0 and (R & TM) != TM:
                raise Exception()

            p32 = struct.unpack(">I", prev)[0]
            r14 = struct.pack(">I", p32 | (R & ~TM))
            return bytes(r14)
        except:
            raise RelocationException("R_PPC_REL24: 0x%08X does not fit in relocation at 0x%08X" % (R, P))

class R_PPC_EMB_SDA21(Relocation):
    def __init__(self, symbol, section, offset, addend):
        super().__init__(symbol, section, offset, addend)

        self.sections = {
            ".sdata": (13, 0x80458580),
            ".sbss": (13, 0x80458580),
            ".sdata2": (2, 0x80459A00),
            ".sbss2": (2, 0x80459A00),
            ".PPC.EMB.sdata0": (0, 0x00000000),
            ".PPC.EMB.sbss0": (0, 0x00000000),
        }

    def size(self) -> bytes:
        return 4

    def calculate(self, prev) -> bytes:
        symbol_section = self.symbol.getSection()
        if not symbol_section.name in self.sections:
            fail("R_PPC_EMB_SDA21: symbol in section '%s' cannot be relocated" % self.section.name)
        P = self.section.getVirtualAddr(self.offset)
        B, X = self.sections[symbol_section.name]
        A = self.addend
        S = self.symbol.addr
        R = (S + A - X)

        if R >= -32768 and R < 32768:
            value = R & 0xFFFF
        else:
            raise RelocationException("R_PPC_EMB_SDA21: relocation value too big! %08X" % R)

        return bytes([
            prev[0],
            (prev[1] & ~0x1F) | (B & 0x1F),
            (value >> 8),
            (value & 0Xff)
        ])