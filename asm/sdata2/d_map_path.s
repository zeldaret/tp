.include "macros.inc"
.section .sdata2, "a"  # 0x80451e08 - 0x80451e20

.global lbl_80451E08
lbl_80451E08:
.incbin "baserom.dol", 0x3D0C68, 0x4

.global lbl_80451E0C
lbl_80451E0C:
.incbin "baserom.dol", 0x3D0C6C, 0x4

.global lbl_80451E10
lbl_80451E10:
.incbin "baserom.dol", 0x3D0C70, 0x4

.global lbl_80451E14
lbl_80451E14:
.incbin "baserom.dol", 0x3D0C74, 0x4

.global lbl_80451E18
lbl_80451E18:
.incbin "baserom.dol", 0x3D0C78, 0x8

