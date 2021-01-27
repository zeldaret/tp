.include "macros.inc"
.section .rodata, "a"  # 0x803a2068 - 0x803a2098

.global lbl_803A2068
lbl_803A2068:
.incbin "baserom.dol", 0x39F068, 0xC

.global lbl_803A2074
lbl_803A2074:
.incbin "baserom.dol", 0x39F074, 0xC

.global lbl_803A2080
lbl_803A2080:
.incbin "baserom.dol", 0x39F080, 0xC

.global lbl_803A208C
lbl_803A208C:
.incbin "baserom.dol", 0x39F08C, 0xC

