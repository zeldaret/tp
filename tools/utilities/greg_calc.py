#!/usr/bin/env python3

import sys

REG_F = {
    "TREG_F": 0x00c,
    "DREG_F": 0x09c,
    "IREG_F": 0x12c,
    "SREG_F": 0x1bc,
    "UREG_F": 0x24c,
    "OREG_F": 0x2dc,
    "YREG_F": 0x36c,
    "KREG_F": 0x3fc,
    "BREG_F": 0x48c,
    "MREG_F": 0x51c,
    "AREG_F": 0x5ac,
    "PREG_F": 0x63c,
    "NREG_F": 0x6cc,
    "WREG_F": 0x75c,
    "JREG_F": 0x7ec,
    "HREG_F": 0x87c,
    "VREG_F": 0x90c,
    "XREG_F": 0x99c,
    "ZREG_F": 0xa2c,
    "nREG_F": 0xabc,
    "kREG_F": 0xb4c,
    "oREG_F": 0xbdc,
    "yREG_F": 0xc6c,
    "aREG_F": 0xcfc,
    "hREG_F": 0xd8c,
    "tREG_F": 0xe1c
}

REG_S = {
    "TREG_S": 0x084,
    "DREG_S": 0x114,
    "IREG_S": 0x1a4,
    "SREG_S": 0x234,
    "UREG_S": 0x2c4,
    "OREG_S": 0x354,
    "YREG_S": 0x3e4,
    "KREG_S": 0x474,
    "BREG_S": 0x504,
    "MREG_S": 0x594,
    "AREG_S": 0x624,
    "PREG_S": 0x6b4,
    "NREG_S": 0x744,
    "WREG_S": 0x7d4,
    "JREG_S": 0x864,
    "HREG_S": 0x8f4,
    "VREG_S": 0x984,
    "XREG_S": 0xa14,
    "ZREG_S": 0xaa4,
    "nREG_S": 0xb34,
    "kREG_S": 0xbc4,
    "oREG_S": 0xc54,
    "yREG_S": 0xce4,
    "aREG_S": 0xd74,
    "hREG_S": 0xe04,
    "tREG_S": 0xe94
}


def find_register(hex_val, reg_map, step):
    best_match = None
    best_base = -1

    for name, base in reg_map.items():
        if base <= hex_val and base > best_base:
            best_match = name
            best_base = base

    if best_match is not None:
        index = (hex_val - best_base) // step
        expected = best_base + index * step
        if expected == hex_val:
            return f"{best_match}({index})"

    raise ValueError("No matching register found.")


def main():
    if len(sys.argv) != 3:
        print("Usage: greg_calc.py [s|f] [hex_val]")
        return

    mode = sys.argv[1].lower()
    try:
        hex_val = int(sys.argv[2], 16)
    except ValueError:
        print("Invalid hex value. Use format like 0x75c")
        return

    if mode == 'f':
        result = find_register(hex_val, REG_F, 4)
    elif mode == 's':
        result = find_register(hex_val, REG_S, 2)
    else:
        print("Invalid mode. Use 's' for short or 'f' for float.")
        return

    print(result)


if __name__ == "__main__":
    main()
