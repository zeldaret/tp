.include "macros.inc"
.section .rodata, "a"  # 0x803a2100 - 0x803a2130

.global lbl_803A2100
lbl_803A2100:
.incbin "baserom.dol", 0x39F100, 0x30

