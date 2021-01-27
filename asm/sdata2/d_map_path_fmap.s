.include "macros.inc"
.section .sdata2, "a"  # 0x80451e20 - 0x80451e28

.global lbl_80451E20
lbl_80451E20:
.incbin "baserom.dol", 0x3D0C80, 0x8

