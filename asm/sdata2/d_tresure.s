.include "macros.inc"
.section .sdata2, "a"  # 0x80452be8 - 0x80452c10

.global lbl_80452BE8
lbl_80452BE8:
.incbin "baserom.dol", 0x3D1A48, 0x4

.global lbl_80452BEC
lbl_80452BEC:
.incbin "baserom.dol", 0x3D1A4C, 0x4

.global lbl_80452BF0
lbl_80452BF0:
.incbin "baserom.dol", 0x3D1A50, 0x8

.global lbl_80452BF8
lbl_80452BF8:
.incbin "baserom.dol", 0x3D1A58, 0x8

.global lbl_80452C00
lbl_80452C00:
.incbin "baserom.dol", 0x3D1A60, 0x8

.global lbl_80452C08
lbl_80452C08:
.incbin "baserom.dol", 0x3D1A68, 0x8

