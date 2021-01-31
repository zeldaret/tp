.include "macros.inc"
.section .sdata2, "a"  # 0x80451d00 - 0x80451d28

.global lbl_80451D00
lbl_80451D00:
.incbin "baserom.dol", 0x3D0B60, 0x4

.global lbl_80451D04
lbl_80451D04:
.incbin "baserom.dol", 0x3D0B64, 0x4

.global lbl_80451D08
lbl_80451D08:
.incbin "baserom.dol", 0x3D0B68, 0x8

.global lbl_80451D10
lbl_80451D10:
.incbin "baserom.dol", 0x3D0B70, 0x8

.global lbl_80451D18
lbl_80451D18:
.incbin "baserom.dol", 0x3D0B78, 0x4

.global lbl_80451D1C
lbl_80451D1C:
.incbin "baserom.dol", 0x3D0B7C, 0x4

.global lbl_80451D20
lbl_80451D20:
.incbin "baserom.dol", 0x3D0B80, 0x8

