.include "macros.inc"
.section .rodata, "a"  # 0x80379c30 - 0x80379c58

.global lbl_80379C30
lbl_80379C30:
.incbin "baserom.dol", 0x376C30, 0x1C

.global lbl_80379C4C
lbl_80379C4C:
.incbin "baserom.dol", 0x376C4C, 0xC

