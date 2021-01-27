.include "macros.inc"
.section .rodata, "a"  # 0x803a2130 - 0x803a2170

.global lbl_803A2130
lbl_803A2130:
.incbin "baserom.dol", 0x39F130, 0x40

