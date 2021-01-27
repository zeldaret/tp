.include "macros.inc"
.section .sdata2, "a"  # 0x80452000 - 0x80452008

.global lbl_80452000
lbl_80452000:
.incbin "baserom.dol", 0x3D0E60, 0x8

