.include "macros.inc"
.section .rodata, "a"  # 0x803a2008 - 0x803a2068

.global lbl_803A2008
lbl_803A2008:
.incbin "baserom.dol", 0x39F008, 0x10

.global lbl_803A2018
lbl_803A2018:
.incbin "baserom.dol", 0x39F018, 0x10

.global lbl_803A2028
lbl_803A2028:
.incbin "baserom.dol", 0x39F028, 0x40

