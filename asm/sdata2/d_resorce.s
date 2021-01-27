.include "macros.inc"
.section .sdata2, "a"  # 0x80451df0 - 0x80451e08

.global lbl_80451DF0
lbl_80451DF0:
.incbin "baserom.dol", 0x3D0C50, 0x8

.global lbl_80451DF8
lbl_80451DF8:
.incbin "baserom.dol", 0x3D0C58, 0x8

.global lbl_80451E00
lbl_80451E00:
.incbin "baserom.dol", 0x3D0C60, 0x8

