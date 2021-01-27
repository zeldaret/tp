.include "macros.inc"
.section .sdata2, "a"  # 0x80452bd8 - 0x80452be8

.global lbl_80452BD8
lbl_80452BD8:
.incbin "baserom.dol", 0x3D1A38, 0x4

.global lbl_80452BDC
lbl_80452BDC:
.incbin "baserom.dol", 0x3D1A3C, 0x4

.global lbl_80452BE0
lbl_80452BE0:
.incbin "baserom.dol", 0x3D1A40, 0x8

