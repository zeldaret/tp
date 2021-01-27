.include "macros.inc"
.section .sdata2, "a"  # 0x80451d60 - 0x80451d98

.global lbl_80451D60
lbl_80451D60:
.incbin "baserom.dol", 0x3D0BC0, 0x4

.global lbl_80451D64
lbl_80451D64:
.incbin "baserom.dol", 0x3D0BC4, 0x4

.global lbl_80451D68
lbl_80451D68:
.incbin "baserom.dol", 0x3D0BC8, 0x8

.global lbl_80451D70
lbl_80451D70:
.incbin "baserom.dol", 0x3D0BD0, 0x8

.global lbl_80451D78
lbl_80451D78:
.incbin "baserom.dol", 0x3D0BD8, 0x8

.global lbl_80451D80
lbl_80451D80:
.incbin "baserom.dol", 0x3D0BE0, 0x8

.global lbl_80451D88
lbl_80451D88:
.incbin "baserom.dol", 0x3D0BE8, 0x4

.global lbl_80451D8C
lbl_80451D8C:
.incbin "baserom.dol", 0x3D0BEC, 0x4

.global lbl_80451D90
lbl_80451D90:
.incbin "baserom.dol", 0x3D0BF0, 0x4

.global lbl_80451D94
lbl_80451D94:
.incbin "baserom.dol", 0x3D0BF4, 0x4

