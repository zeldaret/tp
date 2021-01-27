.include "macros.inc"
.section .sdata2, "a"  # 0x80451c90 - 0x80451ca0

.global lbl_80451C90
lbl_80451C90:
.incbin "baserom.dol", 0x3D0AF0, 0x4

.global lbl_80451C94
lbl_80451C94:
.incbin "baserom.dol", 0x3D0AF4, 0x4

.global lbl_80451C98
lbl_80451C98:
.incbin "baserom.dol", 0x3D0AF8, 0x8

