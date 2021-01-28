.include "macros.inc"
.section .sdata2, "a"  # 0x80451ff8 - 0x80452000

.global lbl_80451FF8
lbl_80451FF8:
.incbin "baserom.dol", 0x3D0E58, 0x8

