import sys

from capstone import *
from capstone.ppc import *
from collections import defaultdict
from itertools import chain
from dataclasses import dataclass, field
from intervaltree import IntervalTree, Interval

from .. import util

SDA_BASE = 0x80458580
SDA2_BASE = 0x80459A00

def sign_extend_16(value):
    if value > 0 and (value & 0x8000):
        value -= 0x10000
    return value

def sign_extend_12(value):
    if value > 0 and (value & 0x800):
        value -= 0x1000
    return value

# TODO: find all of them
loadStoreInsns = {
    PPC_INS_LWZ,
    PPC_INS_LWZU,
    PPC_INS_LMW,
    PPC_INS_LHA,
    PPC_INS_LHAU,
    PPC_INS_LHZ,
    PPC_INS_LHZU,
    PPC_INS_LBZ,
    PPC_INS_LBZU,
    PPC_INS_LFD,
    PPC_INS_LFDU,
    PPC_INS_LFS,
    PPC_INS_LFSU,
    PPC_INS_STW,
    PPC_INS_STWU,
    PPC_INS_STMW,
    PPC_INS_STH,
    PPC_INS_STHU,
    PPC_INS_STB,
    PPC_INS_STBU,
    PPC_INS_STFS,
    PPC_INS_STFSU,
    PPC_INS_STFD,
    PPC_INS_STDU,
}

# Returns true if the instruction is a load or store with the given register as a base
def is_load_store_reg_offset(insn, reg):
    return insn.id in loadStoreInsns and (reg == None or insn.operands[1].mem.base == reg)

blacklistedInsns = {
    # Unsupported instructions
    PPC_INS_VMSUMSHM, PPC_INS_VMHADDSHS, PPC_INS_XXSLDWI, PPC_INS_VSEL,
    PPC_INS_XVSUBSP, PPC_INS_XXSEL, PPC_INS_XVMULSP, PPC_INS_XVDIVSP,
    PPC_INS_VADDUHM, PPC_INS_XXPERMDI, PPC_INS_XVMADDASP, PPC_INS_XVMADDMSP,
    PPC_INS_XVCMPGTSP, PPC_INS_XXMRGHD, PPC_INS_XSMSUBMDP, PPC_INS_XSTDIVDP,
    PPC_INS_XVADDSP, PPC_INS_XVCMPEQSP, PPC_INS_XVMSUBASP, PPC_INS_XVCMPGESP,

    # Instructions that Capstone gets wrong
    PPC_INS_MFESR, PPC_INS_MFDEAR, PPC_INS_MTESR, PPC_INS_MTDEAR, PPC_INS_MFICCR, PPC_INS_MFASR,
    PPC_INS_XVCMPEQDP, PPC_INS_XVMADDADP, PPC_INS_XVCMPGEDP, PPC_INS_XVMSUBADP,
    PPC_INS_XVNMADDMDP, PPC_INS_XVNMSUBMDP, PPC_INS_VADDUBM, PPC_INS_VMADDFP,
    PPC_INS_XSMADDADP, PPC_INS_XVMSUBMDP, PPC_INS_XSMADDADP, PPC_INS_XVMSUBMDP, PPC_INS_XSMADDMDP,
    PPC_INS_XSMSUBADP, PPC_INS_XSCMPUDP, PPC_INS_XVMSUBMSP, PPC_INS_XVTDIVSP,
    PPC_INS_XSCMPODP, PPC_INS_XSNMADDMDP, PPC_INS_XVNMADDMSP, PPC_INS_XVNMADDASP,
    PPC_INS_XVNMADDADP, PPC_INS_XVNMSUBMSP, PPC_INS_XVNMSUBASP, PPC_INS_XSNMADDADP,
    PPC_INS_VPKUHUM, PPC_INS_VMRGHB, PPC_INS_XVTDIVDP, PPC_INS_XSNMSUBADP,
    PPC_INS_XVCMPGTDP, PPC_INS_XVMADDMDP, PPC_INS_XSNMSUBMDP, PPC_INS_XXSPLTW,
}

branchInsns = {
    PPC_INS_B, PPC_INS_BA, PPC_INS_BC, PPC_INS_BCCTR, PPC_INS_BCCTRL, 
    PPC_INS_BCL, PPC_INS_BCLR, PPC_INS_BCLRL, PPC_INS_BCTR, PPC_INS_BCTRL, 
    PPC_INS_BCT, PPC_INS_BDNZ, PPC_INS_BDNZA, PPC_INS_BDNZL, PPC_INS_BDNZLA, 
    PPC_INS_BDNZLR, PPC_INS_BDNZLRL, PPC_INS_BDZ, PPC_INS_BDZA, PPC_INS_BDZL, 
    PPC_INS_BDZLA, PPC_INS_BDZLR, PPC_INS_BDZLRL, PPC_INS_BL, PPC_INS_BLA, 
    PPC_INS_BLR, PPC_INS_BLRL, PPC_INS_BRINC, 
}

# Returns true if the instruction writes to the specified register
def reg_modified(insn, reg):
    if insn.op[0].type == PPC_OP_REG and insn.op[0].reg == reg:
        return True
    else:
        return False

# Computes the combined value from a lis, addi/ori instruction pairr
def combine_split_load_value(hiLoadInsn, loLoadInsn):
    assert hiLoadInsn.id == PPC_INS_LIS
    #assert loLoadInsn.id in {PPC_INS_ADDI, PPC_INS_ORI}
    #assert loLoadInsn.operands[1].reg == hiLoadInsn.operands[0].reg
    # hiLoadInsn must be "lis rX, hiPart"
    value = hiLoadInsn.operands[1].imm << 16
    # loLoadInsn must be "addi rY, rX, loPart"
    if loLoadInsn.id == PPC_INS_ORI:
        value |= loLoadInsn.operands[2].imm
    elif loLoadInsn.id == PPC_INS_ADDI:
        value += sign_extend_16(loLoadInsn.operands[2].imm)
    elif is_load_store_reg_offset(loLoadInsn, hiLoadInsn.operands[0].reg):
        value += sign_extend_16(loLoadInsn.operands[1].mem.disp)
    else:
        assert False
    return value

def is_store_insn(insn):
    # TODO: all store instructions
    return insn.id in {PPC_INS_STW}

def disasm_ps(inst):
    RA = ((inst >> 16) & 0x1f)
    RB = ((inst >> 11) & 0x1f)
    FA = ((inst >> 16) & 0x1f)
    FB = ((inst >> 11) & 0x1f)
    FC = ((inst >> 6) & 0x1f)
    FD = ((inst >> 21) & 0x1f)
    FS = ((inst >> 21) & 0x1f)
    IX = ((inst >> 7) & 0x7)
    WX = ((inst >> 10) & 0x1)

    opcode = (inst >> 1) & 0x1F
    if opcode == 6:
        mnemonic = 'psq_lux' if inst & 0x40 else 'psq_lx'
        return '%s f%i, r%i, r%i, %i, %i /* qr%i */' % (mnemonic, FD, RA, RB, WX, IX, IX)
    if opcode == 7:
        mnemonic = 'psq_stux' if inst & 0x40 else 'psq_stx'
        return '%s f%i, r%i, r%i, %i, %i /* qr%i */' % (mnemonic, FS, RA, RB, WX, IX, IX)
    if opcode == 18:
        return 'ps_div f%i, f%i, f%i' % (FD, FA, FB)
    if opcode == 20:
        return 'ps_sub f%i, f%i, f%i' % (FD, FA, FB)
    if opcode == 21:
        return 'ps_add f%i, f%i, f%i' % (FD, FA, FB)
    if opcode == 23:
        return 'ps_sel f%i, f%i, f%i' % (FD, FA, FC)
    if opcode == 24:
        return 'ps_res f%i, f%i' % (FD, FB)
    if opcode == 25:
        return 'ps_mul f%i, f%i, f%i' % (FD, FA, FC)
    if opcode == 26:
        return 'ps_rsqrte f%i, f%i' % (FD, FB)
    if opcode == 28:
        return 'ps_msub f%i, f%i, f%i, f%i' % (FD, FA, FC, FB)
    if opcode == 29:
        return 'ps_madd f%i, f%i, f%i, f%i' % (FD, FA, FC, FB)
    if opcode == 30:
        return 'ps_nmsub f%i, f%i, f%i, f%i' % (FD, FA, FC, FB)
    if opcode == 31:
        return 'ps_nmadd f%i, f%i, f%i, f%i' % (FD, FA, FC, FB)
    if opcode == 10:
        return 'ps_sum0 f%i, f%i, f%i, f%i' % (FD, FA, FC, FB)
    if opcode == 11:
        return 'ps_sum1 f%i, f%i, f%i, f%i' % (FD, FA, FC, FB)
    if opcode == 12:
        return 'ps_muls0 f%i, f%i, f%i' % (FD, FA, FC)
    if opcode == 13:
        return 'ps_muls1 f%i, f%i, f%i' % (FD, FA, FC)
    if opcode == 14:
        return 'ps_madds0 f%i, f%i, f%i, f%i' % (FD, FA, FC, FB)
    if opcode == 15:
        return 'ps_madds1 f%i, f%i, f%i, f%i' % (FD, FA, FC, FB)

    opcode = (inst >> 1) & 0x3FF
    if opcode == 40:
        return 'ps_neg f%i, f%i' % (FD, FB)
    if opcode == 72:
        return 'ps_mr f%i, f%i' % (FD, FB)
    if opcode == 136:
        return 'ps_nabs f%i, f%i' % (FD, FB)
    if opcode == 264:
        return 'ps_abs f%i, f%i' % (FD, FB)
    if opcode in {0, 32, 64, 96}:
        mnemonics = ['ps_cmpu0', 'ps_cmpo0', 'ps_cmpu1', 'ps_cmpo1']
        mnemonic = mnemonics[(inst >> 6) & 3]
        i = (inst & 0x03800000) >> 23
        return '%s cr%i, f%i, f%i' % (mnemonic, i, FA, FB)
    if opcode == 528:
        return 'ps_merge00 f%i, f%i, f%i' % (FD, FA, FB)
    if opcode == 560:
        return 'ps_merge01 f%i, f%i, f%i' % (FD, FA, FB)
    if opcode == 592:
        return 'ps_merge10 f%i, f%i, f%i' % (FD, FA, FB)
    if opcode == 624:
        return 'ps_merge11 f%i, f%i, f%i' % (FD, FA, FB)
    if opcode == 1014:
        if not (inst & 0x03e00000):
            if (inst & 1) == 0:
                return 'dcbz_l r%i, r%i' % ((inst & 0x001f0000) >> 16, (inst & 0x0000f800) >> 11)
    return None

def disasm_ps_mem(inst, idx):
    RA = ((inst >> 16) & 0x1f)
    RS = ((inst >> 21) & 0x1f)
    I = ((inst >> 12) & 0x7)
    W = ((inst >> 15) & 0x1)
    disp = sign_extend_12(inst & 0xFFF)
    if idx == 56:
        mnemonic = 'psq_l'
    if idx == 57:
        mnemonic = 'psq_lu'
    if idx == 60:
        mnemonic = 'psq_st'
    if idx == 61:
        mnemonic = 'psq_stu'
    return '%s f%i, %i(r%i), %i, %i /* qr%i */' % (mnemonic, RS, disp, RA, W, I, I)

def disasm_fcmp(inst):
    crd = (inst & 0x03800000) >> 23
    a = (inst & 0x001f0000) >> 16
    b = (inst & 0x0000f800) >> 11
    return 'fcmpo cr%i, f%i, f%i' % (crd, a, b)


def disasm_mspr(inst, mode):
    if (inst & 1):
        return None
    d = (inst & 0x03e00000) >> 21
    a = (inst & 0x001f0000) >> 16
    b = (inst & 0x0000f800) >> 11
    spr = (b << 5) + a
    if mode:
        return 'mtspr 0x%X, r%i' % (spr, d)
    else:
        return 'mfspr r%i, 0x%X' % (d, spr)

def disasm_mcrxr(inst):
    if (inst & 0x007ff801):
        return None
    crd = (inst & 0x03800000) >> 23
    return 'mcrxr cr%i' % crd

def disasm_ld(inst):
    d = (inst & 0x03e00000) >> 21
    a = (inst & 0x001f0000) >> 16
    ds = (inst & 0x0000fffc) >> 2
    return 'ld r%i, 0x%X(r%i)' % (d, ds, a)

class Disassembler:
    """Disassemble code segments with support for merging loads that are split"""

    def __init__(self, sections):
        self.cs = Cs(CS_ARCH_PPC, CS_MODE_32 | CS_MODE_BIG_ENDIAN)
        self.cs.detail = True
        self.cs.imm_unsigned = False

        self.lisInsns = {}  
        self.splitDataLoads = {}  
        self.linkedInsns = {} 
        self.r13AddrInsns = {}
        self.r2AddrInsns = {}
        self.registers = {}
        self.registerLoads = {}
        self.sections = sections

        self.r13_addr = 0x80458580
        self.r2_addr = 0x80459A00
        self.common_r13_addr = self.r13_addr
        self.common_r2_addr = self.r2_addr
        
    def is_label_candidate(self, addr):
        if len(self.sections) == 0:
            return True

        for section in self.sections:
            if addr in section:
                if len(section.code_segments):
                    return (addr & 3) == 0
                return True

        return False

    def execute_generator(self, addr, data, size):
        """ This generator will disassemble the 'data' at address 'addr'
        and for each instruction call self.callback of the class.  

        To add custom functionality inherit from the Disassemble class
        and override the callback function.

        This function will yield 0, 1 or 2 and the current address. Where
        the number indicates the phase:
            0: disassemble instructions
            1: pre_callback
            2: callback
        """
        if size <= 0:
            return

        self.lisInsns = {}  
        self.splitDataLoads = {}  
        self.linkedInsns = {} 
        self.r13AddrInsns = {}
        self.r2AddrInsns = {}
        self.registers = {}
        self.registerLoads = {}

        self.r13_addr = 0x80458580
        self.r2_addr = 0x80459A00
        self.common_r13_addr = self.r13_addr
        self.common_r2_addr = self.r2_addr

        yield 0, addr
        instructions = []
        offset = 0
        while offset < size:
            decoded_insns = list(self.cs.disasm(data[offset:], addr + offset))
            if len(decoded_insns) == 0:
                instructions.append((addr + offset, None, data[offset:][:4]))
                offset += 4
            else:
                instructions += [(x.address, x, x.bytes) for x in decoded_insns]
                offset += len(decoded_insns) * 4
            yield 0, addr + offset
            
        yield 1, addr
        for i, insns in enumerate(util.chunks(instructions, 1024)):
            last_addr = 0
            for insn in insns:
                self.pre_callback(*insn)
                last_addr = insn[0]
            yield 1, last_addr

        yield 2, addr
        for i, insns in enumerate(util.chunks(instructions, 1024)):
            last_addr = 0
            for insn in insns:
                self.callback(*insn)
                last_addr = insn[0]
            yield 2, last_addr

    async def async_execute(self, addr, data, size):
        """Similar to execute_generator, the only difference is that this is not an generator
        the self.callback function is called with await.""" 

        if size <= 0:
            return

        instructions = []
        offset = 0
        while offset < size:
            decoded_insns = list(self.cs.disasm(data[offset:], addr + offset))
            if len(decoded_insns) == 0:
                instructions.append((addr + offset, None, data[offset:][:4]))
                offset += 4
            else:
                for x in decoded_insns:
                    insn = x
                    if insn.id in blacklistedInsns:
                        insn = None
                    instructions.append((x.address, insn, x.bytes))
                offset += len(decoded_insns) * 4

        for insn in instructions:
            self.pre_callback(*insn)
        for insn in instructions:
            await self.callback(*insn)
    
    """
    def execute_in_groups(self, addr, data, size):
        if size <= 0:
            return

        instructions = []
        offset = 0
        while offset < size:
            decoded_insns = list(self.cs.disasm(data[offset:], addr + offset))
            if len(decoded_insns) == 0:
                instructions.append((addr + offset, None, data[offset:][:4]))
                offset += 4
            else:
                for x in decoded_insns:
                    insn = x
                    if insn.id in blacklistedInsns:
                        insn = None
                    instructions.append((x.address, insn, x.bytes))
                offset += len(decoded_insns) * 4

        last_blr = 0
        for i, xinsn in enumerate(instructions):
            _, insn, _ = xinsn
            if not insn:
                continue
            if insn.id in {PPC_INS_BLR, PPC_INS_RFI}:
                self.execute_function(instructions[last_blr:i+1])
                last_blr = i + 1
    """

    def callback(self, address, insn, bytes):
        """Callback function that should be overriden"""
        pass

    def pre_callback(self, address, insn, bytes):
        """Pre-callback function. Used to find split loads and merge them. 
        Later the callback function can find these merged loads and do something special"""

        if insn == None:
            return

        self.r2AddrInsns[insn.address] = self.r2_addr
        self.r13AddrInsns[insn.address] = self.r13_addr

        if insn.id in {PPC_INS_B, PPC_INS_BLR, PPC_INS_BL, PPC_INS_BC, PPC_INS_BDZ, PPC_INS_BDNZ}:
            self.lisInsns.clear()
            self.registers.clear()

        #if insn.id == PPC_INS_BLR:

        if insn.id == PPC_INS_LIS:
            self.lisInsns[insn.operands[0].reg] = insn
            self.registers[insn.operands[0].reg] = (insn.operands[1].imm << 16)
        # TODO: Why is this commented?
        #elif insn.id == PPC_INS_LWZU and insn.operands[1].mem.base in self.lisInsns:
        #    hiLoadInsn = self.lisInsns[insn.operands[1].reg]

        elif (insn.id in {PPC_INS_ADDI, PPC_INS_ORI} and insn.operands[1].reg in self.lisInsns) \
                or (is_load_store_reg_offset(insn, None) and insn.operands[1].mem.base in self.lisInsns):
            hiLoadInsn = self.lisInsns[insn.operands[1].reg]

            value = combine_split_load_value(hiLoadInsn, insn)
            self.linkedInsns[hiLoadInsn.address] = insn
            self.splitDataLoads[hiLoadInsn.address] = value
            self.splitDataLoads[insn.address] = value
            self.lisInsns.pop(insn.operands[1].reg, None)
            self.registers[insn.operands[0].reg] = value

            # detect r2/r13 initialization
            if insn.id == PPC_INS_ORI and insn.operands[0].reg == insn.operands[1].reg:
                if insn.operands[0].reg == PPC_REG_R2:
                    self.r2_addr = value
                elif insn.operands[0].reg == PPC_REG_R13:
                    self.r13_addr = value
        #elif insn.id in {PPC_INS_ADDI, PPC_INS_ORI} and insn.operands[1].reg in self.registers:
        #    value = self.registers[insn.operands[1].reg]
        #    if insn.id == PPC_INS_ORI:
        #        value |= insn.operands[2].imm
        #    elif insn.id == PPC_INS_ADDI:
        #        value += sign_extend_16(insn.operands[2].imm)
        #
        #    self.registers[insn.operands[0].reg] = value
        #elif (is_load_store_reg_offset(insn, None) and insn.operands[1].mem.base in self.registers):
        #    assert not insn.address in self.registerLoads
        #    value = self.registers[insn.operands[1].mem.base]
        #    value += sign_extend_16(insn.operands[1].mem.disp)
        #    self.registerLoads[insn.address] = value

        elif (not is_store_insn(insn)) and len(insn.operands) >= 1 and insn.operands[0].type == PPC_OP_REG:
            self.lisInsns.pop(insn.operands[0].reg, None)
            self.registers.pop(insn.operands[0].reg, None)

@dataclass
class Access:
    """Arbitrary access to label at a specific address"""
    at: int
    addr: int

@dataclass 
class BranchAccess(Access):
    """Branch access"""

@dataclass 
class FloatLoadAccess(Access):
    """Single-float access"""

@dataclass 
class DoubleLoadAccess(Access):
    """Double-float access"""

class AccessCollector(Disassembler):
    """
    Search through assembly code and collect access to possible labels.
    """

    def __init__(self, sections):
        super().__init__(sections)
        self.accesses = dict()
        self.sda_hack_references = set()

    def add_branch_access(self, insn, value):
        if self.is_label_candidate(value):
            self.accesses[insn.address] = BranchAccess(insn.address, value)

    def add_load_access(self, insn, value):
        if not self.is_label_candidate(value):
            return

        if value == 0x8037a118:
            assert False

        assert not insn.address in self.accesses
        if insn.id in { PPC_INS_LFD, PPC_INS_LFDU }:
            self.accesses[insn.address] = DoubleLoadAccess(insn.address, value)
        elif insn.id in { PPC_INS_LFS, PPC_INS_LFSU }:
            self.accesses[insn.address] = FloatLoadAccess(insn.address, value)
        else:
            self.accesses[insn.address] = Access(insn.address, value)

    def add_sda_hack(self, insn, value):
        self.add_load_access(insn, value)
        self.sda_hack_references.add(value)

    def callback(self, address, insn, bytes):
        if insn == None:
            return

        r2_addr = self.r2AddrInsns[insn.address]
        r13_addr = self.r13AddrInsns[insn.address]

        if insn.id in {PPC_INS_B, PPC_INS_BL, PPC_INS_BC, PPC_INS_BDZ, PPC_INS_BDNZ}:
            for op in insn.operands:
                if op.type == PPC_OP_IMM:
                    self.add_branch_access(insn, op.imm)

        if r13_addr == self.common_r13_addr:
            if insn.id == PPC_INS_ADDI and insn.operands[1].value.reg == PPC_REG_R13:
                value = r13_addr + sign_extend_16(insn.operands[2].imm)
                self.add_sda_hack(insn, value)
            if is_load_store_reg_offset(insn, PPC_REG_R13):
                value = r13_addr + sign_extend_16(insn.operands[1].mem.disp)
                self.add_load_access(insn, value)

        if r2_addr == self.common_r2_addr:
            if insn.id == PPC_INS_ADDI and insn.operands[1].value.reg == PPC_REG_R2:
                value = r2_addr + sign_extend_16(insn.operands[2].imm)
                self.add_sda_hack(insn, value)
            if is_load_store_reg_offset(insn, PPC_REG_R2):
                value = r2_addr + sign_extend_16(insn.operands[1].mem.disp)
                self.add_load_access(insn, value)

        if insn.address in self.splitDataLoads and insn.id == PPC_INS_LIS:
            value = self.splitDataLoads[insn.address]
            self.add_load_access(insn, value)
        elif insn.address in self.splitDataLoads and insn.id in {PPC_INS_ADDI, PPC_INS_ORI}:
            value = self.splitDataLoads[insn.address]
            self.add_load_access(insn, value)
        elif insn.address in self.splitDataLoads and is_load_store_reg_offset(insn, None):
            value = self.splitDataLoads[insn.address]
            self.add_load_access(insn, value)
        #elif insn.address in self.registerLoads and is_load_store_reg_offset(insn, None):
        #    value = self.registerLoads[insn.address]
        #    self.add_load_access(insn, value)