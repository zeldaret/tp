.include "macros.inc"
.section .rodata, "a"  # 0x80398208 - 0x80398210

.global lbl_80398208
lbl_80398208:
.incbin "baserom.dol", 0x395208, 0x8

