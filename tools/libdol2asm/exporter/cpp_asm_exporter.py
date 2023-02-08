import struct

from capstone import *
from capstone.ppc import *

from ..disassemble import *
from ..data.function import *
from ..context import Context
from ..builder import AsyncBuilder


class CPPDisassembler(Disassembler):
    def __init__(self, builder: AsyncBuilder, function: Function, block_map, symbol_table, relocations, context: Context):
        super().__init__([])
        self.builder = builder
        self.function = function
        self.block_map = block_map
        self.symbol_table = symbol_table
        self.last_address = 0
        self.relocations = relocations
        self.unregister_references = set()
        self.context = context

    def get_symbol(self, addr):
        if addr == self.function.addr:
            return self.function
        if addr in self.block_map:
            return self.block_map[addr]

        return self.symbol_table.always_get(addr)

    def addr_to_label(self, addr) -> str:
        symbol = self.get_symbol(addr)
        if not symbol:
            return None

        return symbol.asm_reference(addr)

    async def callback(self, address, insn, bytes):
        if address in self.block_map:
            block = self.block_map[address]
            await self.builder.write("%s:" % block.identifier.label)

        self.last_address = address
        asm = None
        raw = struct.unpack(">I", bytes)[0]
        if insn != None:
            asm = self.insn_to_text(address, insn, raw)
        else:
            # Capstone couldn't disassemble it
            idx = (raw & 0xfc000000) >> 26
            idx2 = (raw & 0x000007fe) >> 1

            if idx == 31 and idx2 == 467:       # mtspr
                asm = disasm_mspr(raw, 1)
            elif idx == 31 and idx2 == 339:     # mfspr
                asm = disasm_mspr(raw, 0)
            elif idx == 31 and idx2 == 512:     # mcrxr
                asm = disasm_mcrxr(raw)
            elif idx == 63 and idx2 == 32:      # fcmpo
                asm = disasm_fcmp(raw)
            elif idx == 4:
                asm = disasm_ps(raw)       # Paired singles
            elif idx in {56, 57, 60, 61}:
                asm = disasm_ps_mem(raw, idx)
            elif idx == 58:
                asm = disasm_ld(raw)       # ld

        if asm == None:
            asm = f".4byte 0x{raw:08X}  /* unknown instruction */"

        prefixComment = '/* %08X  %02X %02X %02X %02X */' % (
            address, bytes[0], bytes[1], bytes[2], bytes[3])
        await self.builder.write(f"{prefixComment}\t{asm}")

    def insn_to_text(self, addr, insn, raw) -> str:
        id = insn.id
        split_load = addr in self.splitDataLoads
        offset_load = is_load_store_reg_offset(insn, None)
        r2_addr = self.r2AddrInsns[addr]
        r13_addr = self.r13AddrInsns[addr]

        # Branch instruction replace immediate value with label
        if id in {PPC_INS_B, PPC_INS_BL, PPC_INS_BDZ, PPC_INS_BDNZ}:
            label = self.addr_to_label(insn.operands[0].imm)
            if not label:
                k = " ".join([f"{x:02X}" for x in insn.bytes])
                self.context.warning(
                    f"{k}| '{label}' {addr:08X} to {insn.operands[0].imm:08X}, branch to unknown addr: {insn}")
                sys.exit(1)
            assert label
            return f"{insn.mnemonic} {label}"
        elif id == PPC_INS_BC:
            branchPred = '+' if (insn.bytes[1] & 0x20) else ''
            if insn.operands[0].type == PPC_OP_IMM:
                label = self.addr_to_label(insn.operands[0].imm)
                return f"{insn.mnemonic}{branchPred} {label}"
            elif insn.operands[1].type == PPC_OP_IMM:
                label = self.addr_to_label(insn.operands[1].imm)
                reg = insn.reg_name(insn.operands[0].value.reg)
                return f"{insn.mnemonic}{branchPred} {reg}, {label}"
        # Handle split loads (high part)
        elif id == PPC_INS_LIS and split_load:
            loLoadInsn = self.linkedInsns[addr]
            value = self.splitDataLoads[addr]
            suffix = 'h' if loLoadInsn.id == PPC_INS_ORI else 'ha'
            reg = insn.reg_name(insn.operands[0].reg)
            name = self.addr_to_label(value)

            if name:
                return f"{insn.mnemonic} {reg}, {name}@{suffix} /* 0x{value:08X}@{suffix} */"
            else:
                if suffix == 'h':
                    fixed_value = value >> 16
                    fixed_value &= 0xFFFF
                else:
                    fixed_value = value >> 16
                    fixed_value += (1 if (value & 0x8000) else 0)
                    fixed_value &= 0xFFFF
                return f"{insn.mnemonic} {reg}, 0x{fixed_value:04X} /* 0x{value:08X}@{suffix} */"
        # Handle split loads (low part)
        elif id in {PPC_INS_ADDI, PPC_INS_ADDIC, PPC_INS_ORI} and split_load:
            # NOTE: PPC_INS_ADDIC only works with a patched compiler 

            value = self.splitDataLoads[addr]
            rA = insn.reg_name(insn.operands[0].reg)
            rB = insn.reg_name(insn.operands[1].reg)
            name = self.addr_to_label(value)
            if name:
                return f"{insn.mnemonic} {rA}, {rB}, {name}@l /* 0x{value:08X}@l */"
            else:
                fixed_value = value & 0xFFFF
                return f"{insn.mnemonic} {rA}, {rB}, 0x{fixed_value:04X} /* 0x{value:08X}@l */"
        elif offset_load and split_load:
            value = self.splitDataLoads[addr]
            rA = insn.reg_name(insn.operands[0].reg)
            rB = insn.reg_name(insn.operands[1].mem.base)
            name = self.addr_to_label(value)
            if name:
                return f"{insn.mnemonic} {rA}, {name}@l({rB})  /* 0x{value:08X}@l */"
            else:
                fixed_value = value & 0xFFFF
                return f"{insn.mnemonic} {rA}, 0x{fixed_value:04X}({rB})  /* 0x{value:08X}@l */"

        if r13_addr == self.common_r13_addr:
            if id == PPC_INS_ADDI and insn.operands[1].reg == PPC_REG_R13:
                imm = insn.operands[2].imm
                value = r13_addr + sign_extend_16(imm)
                rA = insn.reg_name(insn.operands[0].reg)
                rB = insn.reg_name(insn.operands[1].reg)
                name = self.addr_to_label(value)
                if name:
                    # simplified mnemonic for: la rD,d(rA) equivalent to addi rD,rA,d
                    # https://www.nxp.com/docs/en/application-note/AN2491.pdf
                    return f"la {rA}, {name}({rB}) /* {value:08X}-_SDA_BASE_ */"
            if is_load_store_reg_offset(insn, PPC_REG_R13):
                value = r13_addr + \
                    sign_extend_16(insn.operands[1].mem.disp)
                rA = insn.reg_name(insn.operands[0].reg)
                rB = insn.reg_name(insn.operands[1].mem.base)
                name = self.addr_to_label(value)
                if name:
                    return f"{insn.mnemonic} {rA}, {name}({rB})"

        if r2_addr == self.common_r2_addr:
            if id == PPC_INS_ADDI and insn.operands[1].reg == PPC_REG_R2:
                value = r2_addr + sign_extend_16(insn.operands[2].imm)
                rA = insn.reg_name(insn.operands[0].reg)
                rB = insn.reg_name(insn.operands[1].reg)
                name = self.addr_to_label(value)
                if name:
                    # simplified mnemonic for: la rD,d(rA) equivalent to addi rD,rA,d
                    # https://www.nxp.com/docs/en/application-note/AN2491.pdf
                    return f"la {rA}, {name}({rB}) /* {value:08X}-_SDA2_BASE_ */"
            if is_load_store_reg_offset(insn, PPC_REG_R2):
                value = r2_addr + \
                    sign_extend_16(insn.operands[1].mem.disp)
                rA = insn.reg_name(insn.operands[0].reg)
                rB = insn.reg_name(insn.operands[1].mem.base)
                name = self.addr_to_label(value)
                if name:
                    return f"{insn.mnemonic} {rA}, {name}({rB})"

        # Sign-extend immediate values because Capstone is an idiot and doesn't do that automatically
        if id in {PPC_INS_ADDI, PPC_INS_ADDIC, PPC_INS_SUBFIC, PPC_INS_MULLI} and (insn.operands[2].imm & 0x8000):
            return "%s %s, %s, %i" % (insn.mnemonic, insn.reg_name(insn.operands[0].reg), insn.reg_name(insn.operands[1].value.reg), insn.operands[2].imm - 0x10000)

        elif id in {PPC_INS_LI, PPC_INS_CMPWI} and (insn.operands[1].imm & 0x8000):
            return "%s %s, %i" % (insn.mnemonic, insn.reg_name(insn.operands[0].reg), insn.operands[1].imm - 0x10000)

        elif id == PPC_INS_CNTLZW:
            return f"cntlzw {insn.op_str}"

        elif id == PPC_INS_MTICCR:
            A = 0x3fb
            rB = insn.reg_name(insn.operands[0].reg)
            return f"mtspr 0x{A:X}, {rB}"

        elif id == PPC_INS_SYNC:
            assert insn.operands[0].value.imm == 0
            return 'sync'

        elif id == PPC_INS_LWZ and insn.operands[0].type == PPC_OP_REG and insn.operands[0].reg == PPC_REG_R4 and insn.operands[1].type == PPC_OP_MEM and insn.operands[1].value.mem.base == PPC_REG_R0:
            value = insn.operands[1].value.mem.disp
            insn_str = 'lwz %s, %s0x%x(r0)' % (insn.reg_name(insn.operands[0].reg), '-' if (
                value < 0) else '', ((-value) & 0xFFFF) if value < 0 else (value & 0xFFFF))
            return insn_str

        # "twui X" is shorthand for "twi 31, X"
        elif id == PPC_INS_TWUI:
            assert insn.operands[0].type == PPC_OP_REG
            assert insn.operands[1].type == PPC_OP_IMM
            rA = insn.reg_name(insn.operands[0].reg)
            S = insn.operands[1].value.imm
            insn_str = 'twi %i, %s, 0x%x' % (31, rA, S)
            return insn_str

        else:
            if addr in self.registerLoads:
                return f"{insn.mnemonic} {insn.op_str}\t/* effective address: {self.registerLoads[addr]:08X} */"
            return f"{insn.mnemonic} {insn.op_str}"
