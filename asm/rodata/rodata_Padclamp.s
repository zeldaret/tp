.include "macros.inc"
.section .rodata, "a"  # 0x803a2170 - 0x803a2180

.global lbl_803A2170
lbl_803A2170:
.incbin "baserom.dol", 0x39F170, 0x10

