.include "macros.inc"
.section .sdata2, "a"  # 0x80451b08 - 0x80451b18

.global lbl_80451B08
lbl_80451B08:
.incbin "baserom.dol", 0x3D0968, 0x4

.global lbl_80451B0C
lbl_80451B0C:
.incbin "baserom.dol", 0x3D096C, 0x4

.global lbl_80451B10
lbl_80451B10:
.incbin "baserom.dol", 0x3D0970, 0x8

