from capstone import *
from capstone.ppc import *
from collections import defaultdict

from ..disassemble import blacklistedInsns, is_load_store_reg_offset, sign_extend_16

inst_wr = {
    PPC_INS_LI: ([], [0]),
    PPC_INS_LIS: ([], [0]),

    PPC_INS_MFLR: ([], [0]),
    PPC_INS_MFCTR: ([], [0]),
    PPC_INS_MFSPR: ([], [0]),
    PPC_INS_MFMSR: ([], [0]),
    PPC_INS_MFCR: ([], [0]),
    PPC_INS_MFIBATL: ([], [0]),
    PPC_INS_MFIBATU: ([], [0]),
    PPC_INS_MFDBATL: ([], [0]),
    PPC_INS_MFDBATU: ([], [0]),
    PPC_INS_MFPVR: ([], [0]),
    PPC_INS_MFTB: ([], [0]),
    PPC_INS_MFXER: ([], [0]),
    PPC_INS_MFSR: ([], [0]),
    PPC_INS_MFICCR: ([], [0]),
    PPC_INS_MFFS: ([], [0]),
    PPC_INS_MFDAR: ([], [0]),
    PPC_INS_MFDSISR: ([], [0]),
    PPC_INS_MFTBU: ([], [0]),

    PPC_INS_MTLR: ([0], []),
    PPC_INS_MTCTR: ([0], []),
    PPC_INS_MTSPR: ([0], []),
    PPC_INS_MTMSR: ([0], []),
    PPC_INS_MTCR: ([0], []),
    PPC_INS_MTIBATL: ([0], []),
    PPC_INS_MTIBATU: ([0], []),
    PPC_INS_MTDBATL: ([0], []),
    PPC_INS_MTDBATU: ([0], []),
    PPC_INS_MTXER: ([0], []),
    PPC_INS_MTCRF: ([0], []),
    PPC_INS_MTSR: ([0], []),
    PPC_INS_MTICCR: ([0], []),
    PPC_INS_MTFSF: ([0], []),
    PPC_INS_MTDAR: ([0], []),
    PPC_INS_MTTBU: ([0], []),
    PPC_INS_MTTBL: ([0], []),
    PPC_INS_MTDSISR: ([0], []),
    PPC_INS_MTFSB1: ([0], []),
    
    PPC_INS_NEG: ([1], [0]),
    PPC_INS_CNTLZW: ([1], [0]),

    PPC_INS_OR: ([1, 2], [0]),
    PPC_INS_ORC: ([1, 2], [0]),
    PPC_INS_XOR: ([1, 2], [0]),
    PPC_INS_NOR: ([1, 2], [0]),
    PPC_INS_AND: ([1, 2], [0]),
    PPC_INS_ANDC: ([1, 2], [0]),
    PPC_INS_NAND: ([1, 2], [0]),
    PPC_INS_ADD: ([1, 2], [0]),
    PPC_INS_ADDC: ([1, 2], [0]),
    PPC_INS_ADDE: ([1, 2], [0]),
    PPC_INS_ADDZE: ([1, 2], [0]),
    PPC_INS_SUBF: ([1, 2], [0]),
    PPC_INS_SUBFC: ([1, 2], [0]),
    PPC_INS_SUBFE: ([1, 2], [0]),
    PPC_INS_SUBFZE: ([1, 2], [0]),
    PPC_INS_MULHW: ([1, 2], [0]),
    PPC_INS_MULLW: ([1, 2], [0]),
    PPC_INS_MULHWU: ([1, 2], [0]),
    PPC_INS_DIVW: ([1, 2], [0]),
    PPC_INS_DIVWU: ([1, 2], [0]),
    PPC_INS_SRW: ([1, 2], [0]),
    PPC_INS_SLW: ([1, 2], [0]),
    PPC_INS_SRAW: ([1, 2], [0]),
    PPC_INS_EQV: ([1, 2], [0]),

    PPC_INS_ORI: ([1], [0]),
    PPC_INS_ORIS: ([1], [0]),
    PPC_INS_ANDI: ([1], [0]),
    PPC_INS_ANDIS: ([1], [0]),
    PPC_INS_ADDI: ([1], [0]),
    PPC_INS_ADDIC: ([1], [0]),
    PPC_INS_ADDIS: ([1], [0]),
    PPC_INS_SUBFIC: ([1], [0]),
    PPC_INS_XORI: ([1], [0]),
    PPC_INS_XORIS: ([1], [0]),
    PPC_INS_MULLI: ([1], [0]),
    PPC_INS_SLWI: ([1], [0]),
    PPC_INS_SRWI: ([1], [0]),
    PPC_INS_SRAWI: ([1], [0]),

    PPC_INS_LWZ: ([1], [0]),
    PPC_INS_LHZ: ([1], [0]),
    PPC_INS_LHA: ([1], [0]),
    PPC_INS_LBZ: ([1], [0]),

    PPC_INS_LWZU: ([1], [0, 1]),
    PPC_INS_LHZU: ([1], [0, 1]),
    PPC_INS_LHAU: ([1], [0, 1]),
    PPC_INS_LBZU: ([1], [0, 1]),

    PPC_INS_LWZX: ([1, 2], [0]),
    PPC_INS_LHZX: ([1, 2], [0]),
    PPC_INS_LHAX: ([1, 2], [0]),
    PPC_INS_LBZX: ([1, 2], [0]),


    PPC_INS_LFS: ([1], []),
    PPC_INS_LFD: ([1], []),

    PPC_INS_LFSX: ([1, 2], []),
    PPC_INS_LFDX: ([1, 2], []),

    PPC_INS_LFSU: ([], [1]),
    PPC_INS_LFDU: ([], [1]),

    PPC_INS_STW: ([0, 1], []),
    PPC_INS_STH: ([0, 1], []),
    PPC_INS_STB: ([0, 1], []),

    PPC_INS_STWU: ([0, 1], [1]),
    PPC_INS_STHU: ([0, 1], [1]),
    PPC_INS_STBU: ([0, 1], [1]),
    
    PPC_INS_STWX: ([0, 1, 2], []),
    PPC_INS_STHX: ([0, 1, 2], []),
    PPC_INS_STBX: ([0, 1, 2], []),

    PPC_INS_STWUX: ([0, 1, 2], [1]),

    PPC_INS_STFS: ([1], []),
    PPC_INS_STFD: ([1], []),

    PPC_INS_STFSX: ([1, 2], []),
    PPC_INS_STFDX: ([1, 2], []),

    PPC_INS_STFSU: ([], [1]),
    PPC_INS_STFDU: ([], [1]),

    PPC_INS_MR: ([1], [0]),

    PPC_INS_EXTSH: ([1], [0]),
    PPC_INS_EXTSB: ([1], [0]),

    PPC_INS_CLRLWI: ([1], [0]),
    PPC_INS_RLWINM: ([1], [0]),
    PPC_INS_RLWIMI: ([1], [0]),
    PPC_INS_ROTLWI: ([1], [0]),
    PPC_INS_RLWNM: ([1, 2], [0]),


    PPC_INS_CMPW: ([0, 1], []),
    PPC_INS_CMPLW: ([0, 1], []),
    PPC_INS_CMPWI: ([0], []),
    PPC_INS_CMPLWI: ([0], []),
}

inst_skip = {
    PPC_INS_NOP,
    PPC_INS_RFI,
    PPC_INS_SC,

    PPC_INS_B,
    PPC_INS_BL,
    PPC_INS_BC,
    PPC_INS_BLR,
    PPC_INS_BLRL,
    PPC_INS_BDNZ,
    PPC_INS_BCTRL,
    PPC_INS_BCLR,
    PPC_INS_BCTR,
    PPC_INS_BLA,

    PPC_INS_FNEG,
    PPC_INS_FSUBS,
    PPC_INS_FADDS,
    PPC_INS_FMULS,
    PPC_INS_FDIVS,
    PPC_INS_FCMPU,
    PPC_INS_FMR,
    PPC_INS_FCTIWZ,
    PPC_INS_FABS,
    PPC_INS_FRSP,
    PPC_INS_FSUB,
    PPC_INS_FMUL,
    PPC_INS_FADD,
    PPC_INS_FDIV,
    PPC_INS_FRSQRTE,
    PPC_INS_FNMSUBS,
    PPC_INS_FNMSUB,
    PPC_INS_FMSUBS,
    PPC_INS_FMSUB,
    PPC_INS_FMADDS,
    PPC_INS_FMADD,
    PPC_INS_FRES,

    PPC_INS_DCBST,
    PPC_INS_DCBZ,
    PPC_INS_DCBI,
    PPC_INS_DCBF,
    PPC_INS_DCBT,
    PPC_INS_ISYNC,
    PPC_INS_SYNC,
    PPC_INS_ICBI,

    PPC_INS_CRSET,
    PPC_INS_CROR,
    PPC_INS_CRXOR,
    PPC_INS_CRCLR,

    PPC_INS_TWUI,

    PPC_INS_STMW,
}

branch_inst = {
    PPC_INS_B,
    PPC_INS_BL,
    PPC_INS_BC,
    PPC_INS_BLR,
    PPC_INS_BLRL,
    PPC_INS_BDNZ,
    PPC_INS_BCTRL,
    PPC_INS_BCLR,
    PPC_INS_BCTR,
    PPC_INS_BLA,
}


def op_addi(insn, regs):
    result = None
    prev = regs.get(insn.operands[1].reg, None)
    if prev != None:
        imm = sign_extend_16(insn.operands[2].imm)
        result = prev + imm
    return [ (insn.operands[0].reg, result) ]

def op_andi(insn, regs):
    result = None
    prev = regs.get(insn.operands[1].reg, None)
    if prev != None:
        imm = insn.operands[2].imm
        result = prev & imm
    return [ (insn.operands[0].reg, result) ]

def op_ori(insn, regs):
    result = None
    prev = regs.get(insn.operands[1].reg, None)
    if prev != None:
        imm = insn.operands[2].imm
        result = prev | imm
    return [ (insn.operands[0].reg, result) ]

def lm(insn, regs):
    writes = []
    rt = insn.operands[0].reg

    while rt != PPC_REG_R31:
        writes += [(rt, None)]
        rt += 1

    return writes

def op_load_store_update(store):
    def function(insn, regs):
        if not store:
            writes = [ (insn.operands[0].reg, None) ]
        else:
            writes = []
        base = regs.get(insn.operands[1].mem.base, None)
        disp = sign_extend_16(insn.operands[1].mem.disp)
        if base != None and disp != None:
            value = base + disp
            writes += [ (insn.operands[1].mem.base, value) ]
        else:
            writes += [ (insn.operands[1].mem.base, None) ]

        return writes

    return function

def op_load_store_reg_update(store):
    def function(insn, regs):
        if not store:
            writes = [ (insn.operands[0].reg, None) ]
        else:
            writes = []
        A = regs.get(insn.operands[1].reg, None)
        B = regs.get(insn.operands[2].reg, None)
        if A != None and B != None:
            value = A + B
            writes += [ (insn.operands[1].reg, value) ]
        else:
            writes += [ (insn.operands[1].reg, None) ]

        return writes

    return function

inst_op = {
    PPC_INS_LI: lambda insn, regs: [ (insn.operands[0].reg, insn.operands[1].imm) ], 
    PPC_INS_LIS: lambda insn, regs: [ (insn.operands[0].reg, insn.operands[1].imm << 16) ], 

    PPC_INS_MR: lambda insn, regs: [ (insn.operands[0].reg, regs.get(insn.operands[1].reg, None)) ], 

    PPC_INS_ADDI: op_addi,
    PPC_INS_ANDI: op_andi,
    PPC_INS_ORI: op_ori,

    PPC_INS_LWZUX: op_load_store_reg_update(False),
    PPC_INS_LHZUX: op_load_store_reg_update(False),
    PPC_INS_LHAUX: op_load_store_reg_update(False),
    PPC_INS_LBZUX: op_load_store_reg_update(False),

    PPC_INS_LWZU: op_load_store_update(False),
    PPC_INS_LHZU: op_load_store_update(False),
    PPC_INS_LHAU: op_load_store_update(False),
    PPC_INS_LBZU: op_load_store_update(False),

    PPC_INS_LFSU: op_load_store_update(False),
    PPC_INS_LFSUX: op_load_store_reg_update(False),
    PPC_INS_LFDU: op_load_store_update(False),
    PPC_INS_LFDUX: op_load_store_reg_update(False),

    PPC_INS_STWUX: op_load_store_reg_update(False),
    PPC_INS_STHUX: op_load_store_reg_update(False),
    PPC_INS_STBUX: op_load_store_reg_update(False),

    PPC_INS_STWU: op_load_store_update(True),
    PPC_INS_STHU: op_load_store_update(True),
    PPC_INS_STBU: op_load_store_update(True),

    PPC_INS_STFSU: op_load_store_update(True),
    PPC_INS_STFSUX: op_load_store_reg_update(True),
    PPC_INS_STFDU: op_load_store_update(True),
    PPC_INS_STFDUX: op_load_store_reg_update(True),

    PPC_INS_LMW: lm,
}

def branch_ref(references, insn, before, after):
    for op in insn.operands:
        if op.type == PPC_OP_IMM:
            references[insn.address] = op.value.imm

def mathi_ref(references, insn, before, after):
    """
    print(f"{regl(before)}")
    print(f"{regl(after)}")
    print(f"{insn.mnemonic:<10}{insn.op_str:<20}")
    for i, op in enumerate(insn.operands):
        if op.type == PPC_OP_REG:
            if op.reg in regmap:
                print(f"\t{i}: reg r{regmap[op.reg]}")
        elif op.type == PPC_OP_MEM:
            if op.mem.base in regmap:
                print(f"\t{i}: mem {op.mem.disp}(r{regmap[op.mem.base]})")
    """

    value = after[insn.operands[0].reg]
    if value:
        references[insn.address] = value

def load_store_ref(references, insn, before, after):
    base = before.get(insn.operands[1].mem.base, None)
    disp = sign_extend_16(insn.operands[1].mem.disp)
    if base != None and disp != None:
        value = base + disp
        references[insn.address] = value

def load_store_reg_ref(references, insn, before, after):
    A = before.get(insn.operands[1].reg, None)
    B = before.get(insn.operands[2].reg, None)
    if A != None and B != None:
        value = A + B
        references[insn.address] = value

reference_op = {
    PPC_INS_B: branch_ref,
    PPC_INS_BL: branch_ref,
    PPC_INS_BC: branch_ref,
    PPC_INS_BLR: branch_ref,
    PPC_INS_BLRL: branch_ref,
    PPC_INS_BDNZ: branch_ref,
    PPC_INS_BCTRL: branch_ref,
    PPC_INS_BCLR: branch_ref,
    PPC_INS_BCTR: branch_ref,
    PPC_INS_BLA: branch_ref,

    PPC_INS_ADDI: mathi_ref,
    PPC_INS_ORI: mathi_ref,

    PPC_INS_LWZUX: load_store_reg_ref,
    PPC_INS_LWZU: load_store_ref,
    PPC_INS_LWZX: load_store_reg_ref,
    PPC_INS_LWZ: load_store_ref,

    PPC_INS_LHZUX: load_store_reg_ref,
    PPC_INS_LHZU: load_store_ref,
    PPC_INS_LHZX: load_store_reg_ref,
    PPC_INS_LHZ: load_store_ref,

    PPC_INS_LHAUX: load_store_reg_ref,
    PPC_INS_LHAU: load_store_ref,
    PPC_INS_LHAX: load_store_reg_ref,
    PPC_INS_LHA: load_store_ref,

    PPC_INS_LBZUX: load_store_reg_ref,
    PPC_INS_LBZU: load_store_ref,
    PPC_INS_LBZX: load_store_reg_ref,
    PPC_INS_LBZ: load_store_ref,

    PPC_INS_LFSUX: load_store_reg_ref,
    PPC_INS_LFSU: load_store_ref,
    PPC_INS_LFSX: load_store_reg_ref,
    PPC_INS_LFS: load_store_ref,

    PPC_INS_LFDUX: load_store_reg_ref,
    PPC_INS_LFDU: load_store_ref,
    PPC_INS_LFDX: load_store_reg_ref,
    PPC_INS_LFD: load_store_ref,

    PPC_INS_STWUX: load_store_reg_ref,
    PPC_INS_STWU: load_store_ref,
    PPC_INS_STWX: load_store_reg_ref,
    PPC_INS_STW: load_store_ref,

    PPC_INS_STHUX: load_store_reg_ref,
    PPC_INS_STHU: load_store_ref,
    PPC_INS_STHX: load_store_reg_ref,
    PPC_INS_STH: load_store_ref,

    PPC_INS_STBUX: load_store_reg_ref,
    PPC_INS_STBU: load_store_ref,
    PPC_INS_STBX: load_store_reg_ref,
    PPC_INS_STB: load_store_ref,

    PPC_INS_STFSUX: load_store_reg_ref,
    PPC_INS_STFSU: load_store_ref,
    PPC_INS_STFSX: load_store_reg_ref,
    PPC_INS_STFS: load_store_ref,
    
    PPC_INS_STFDUX: load_store_reg_ref,
    PPC_INS_STFDU: load_store_ref,
    PPC_INS_STFDX: load_store_reg_ref,
    PPC_INS_STFD: load_store_ref,
}

regmap = {}
for i in range(32):
    regmap[PPC_REG_R0 + i] = i


def function(data, addr, size):
    cs = Cs(CS_ARCH_PPC, CS_MODE_32 | CS_MODE_BIG_ENDIAN)
    cs.detail = True
    cs.imm_unsigned = False

    instructions = []
    offset = 0
    while offset < size:
        decoded_insns = list(cs.disasm(data[offset:], addr + offset))
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

    return analyze_function(instructions)

def fmt(value):
    if value == None:
        return "?"
    if value == 0:
        return "0"
    return f"{value:X}"

def regl(regs):
    return "{" + ",".join([ f"r{regmap[k]}={fmt(v)}" for k,v in regs.items() if v != None ]) + "}"

def analyze_function(instructions):
    start = instructions[0][0]
    end = instructions[-1][0] + 4

    label_set = set([start])
    for xinsn in instructions:
        _, insn, _ = xinsn
        if not insn:
            continue
        if insn.id in {PPC_INS_B, PPC_INS_BA, PPC_INS_BC, PPC_INS_BDZ, PPC_INS_BDNZ}:
            for op in insn.operands:
                if op.type == PPC_OP_IMM and op.value.imm >= start and op.value.imm < end:
                    label_set.add(op.value.imm)
                    if insn.address + 4 < end:
                        label_set.add(insn.address + 4)


    label_addr = start
    label_groups = defaultdict(list)
    for xinsn in instructions:
        addr, _, _ = xinsn
        if addr in label_set:
            label_addr = addr
        
        label_groups[label_addr].append(xinsn)

    children_list = defaultdict(set)
    for label, insns in label_groups.items():
        for xinsn in insns:
            _, insn, _ = xinsn    
            if not insn:
                continue
            if insn.id in {PPC_INS_B, PPC_INS_BA}:
                for op in insn.operands:
                    if op.type == PPC_OP_IMM and op.value.imm >= start and op.value.imm < end:
                        children_list[label].add(op.value.imm)
            elif insn.id in {PPC_INS_BC, PPC_INS_BDZ, PPC_INS_BDNZ}:
                for op in insn.operands:
                    if op.type == PPC_OP_IMM and op.value.imm >= start and op.value.imm < end:
                        children_list[label].add(op.value.imm)
                        if insn.address + 4 < end:
                            children_list[label].add(insn.address + 4)

        assert len(insns) > 0
        last_addr, last_insn, _ =  insns[-1]
        if last_insn and not last_insn.id in {PPC_INS_B, PPC_INS_BA, PPC_INS_BLR, PPC_INS_RFI}:
            if last_addr + 4 < end:
                children_list[label].add(last_addr + 4)

    parent_list = defaultdict(set)
    for label, children in children_list.items():
        for child in children:
            parent_list[child].add(label)



    r13_addr = 0x80458580
    r2_addr = 0x80459A00


    error = False
    registers = defaultdict(dict)
    out_state = defaultdict(dict)
    in_state = defaultdict(dict)
    analyzed = set()
    child_analyzed = defaultdict(set)
    references = dict()

    def analyze_block(label, do_children):
        recalculate = False
        for parent in parent_list[label]:
            if not parent in analyzed:
                continue
            if not parent in child_analyzed[label]:
                recalculate = True
                child_analyzed[label].add(parent)

        if not recalculate and label in analyzed:
            return

        input_group = defaultdict(set)
        for parent in parent_list[label]:
            for r, value in in_state[parent].items():
                input_group[r].add(value)

        final = (child_analyzed[label] == parent_list[label])

        input = dict()
        if len(parent_list[label]) == 0:
            input[PPC_REG_R2] = 0x80459A00
            input[PPC_REG_R13] = 0x80458580
        for reg, values in input_group.items():
            if len(values) == 1:
                input[reg] = next(iter(values))
            else:
                input[reg] = None

        analyzed.add(label)
        #print(f"analyze {label:08X} input: {regl(input)}")

        group = label_groups[label]
        if len(group) <= 0:
            print(f"{label:08X} have no children")
            for l, ix in label_groups.items():
                print(f"{l:08X}: {len(ix)}")
                for child in children_list[l]:
                    print(f"\t{child:08X}")




        last_address = group[0][0]
        out_state[label] = input
        registers[last_address] = out_state[label].copy()

        for x in group:
            addr = x[0]
            insn = x[1]
            if not insn:
                continue

            regs = registers[last_address].copy()
            id = insn.id
            if id in inst_skip:
                if final and id in reference_op:
                    reference_op[id](references, insn, regs, {})
                registers[addr] = regs
                last_address = addr     
                continue

            if id in inst_op:
                write_regs = inst_op[id](insn, regs)
                if final and id in reference_op:
                    reference_op[id](references, insn, regs, dict(write_regs))
                for r, value in write_regs:
                    regs[r] = value
                
            else:
                if not id in inst_wr:
                    print(f"{addr:08X}", "unknown instruction", id)
                    print(f"{insn.mnemonic:<10}{insn.op_str:<20}")
                    for i, op in enumerate(insn.operands):
                        if op.type == PPC_OP_REG:
                            if op.reg in regmap:
                                print(f"\t{i}: reg r{regmap[op.reg]}")
                        elif op.type == PPC_OP_MEM:
                            if op.mem.base in regmap:
                                print(f"\t{i}: mem {op.mem.disp}(r{regmap[op.mem.base]})")
                    error = True
                    continue

                if final and id in reference_op:
                    reference_op[id](references, insn, regs, {})

                wr = inst_wr[id]
                read_idx = wr[0]
                write_idx = wr[1]

                write_regs = [ insn.operands[k].reg for k in write_idx ]
                for w in write_regs:
                    regs[w] = None

            #print(f"\t{x[0]:08X} {x[1].mnemonic:<10}{x[1].op_str:<20} {regl(regs)}")
            last_address = addr
            registers[addr] = regs

        in_state[label] = registers[last_address].copy()
        #print(f"        {label:08X} output: {regl(in_state[label])}")
        #print("")

        if do_children:
            for child in children_list[label]:
                analyze_block(child, do_children)


    labels = list(label_groups.keys())
    labels.sort()
    for label, insns in label_groups.items():
        if len(parent_list[label]) == 0 and label != labels[0]:
            analyze_block(label, True)

    analyze_block(labels[0], True)

    if error:
        sys.exit(1)

    if start == 0x802860CC and False:
        for label, insns in label_groups.items():
            final = (child_analyzed[label] == parent_list[label])
            print(f"{label:08X}: {label in analyzed} {final}")
            for parent in parent_list[label]:
                print(f"\t{parent:08X} {regl(in_state[parent])}")
            print(f"{regl(out_state[label])} -> {regl(in_state[label])}")

            for xinsn in insns:
                if not xinsn[1]:
                    print(f"\t** unable to parse **")
                    continue

                regs = registers[xinsn[0]]
                print(f"\t{xinsn[0]:08X} {xinsn[1].mnemonic:<10}{xinsn[1].op_str:<20} {regl(regs)}")

                insn = xinsn[1]
                if insn.id in branch_inst:
                    for op in insn.operands:
                        if op.type == PPC_OP_IMM:
                            print(f"\t/* branch: {op.value.imm:08X} */")

                elif insn.id in {PPC_INS_ADDI, PPC_INS_ORI} and insn.operands[0].reg in regs:
                    value = regs[insn.operands[0].reg]
                    if value:
                        print(f"\t/* address: {value:08X} */")

                elif (is_load_store_reg_offset(insn, None) and insn.operands[1].mem.base in regs):
                    value = regs[insn.operands[1].mem.base]
                    if value != None:
                        value += sign_extend_16(insn.operands[1].mem.disp)
                        print(f"\t/* load/store: {value:08X} */")

            print()

        print("references:")
        for k,r in references.items():
            print(f"\t{k:08X}: {r:08X}")

    return references