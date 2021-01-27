.include "macros.inc"
.section .sdata2, "a"  # 0x80451f00 - 0x80451f38

.global lbl_80451F00
lbl_80451F00:
.incbin "baserom.dol", 0x3D0D60, 0x8

.global lbl_80451F08
lbl_80451F08:
.incbin "baserom.dol", 0x3D0D68, 0x8

.global lbl_80451F10
lbl_80451F10:
.incbin "baserom.dol", 0x3D0D70, 0x8

.global lbl_80451F18
lbl_80451F18:
.incbin "baserom.dol", 0x3D0D78, 0x8

.global lbl_80451F20
lbl_80451F20:
.incbin "baserom.dol", 0x3D0D80, 0x4

.global lbl_80451F24
lbl_80451F24:
.incbin "baserom.dol", 0x3D0D84, 0x4

.global lbl_80451F28
lbl_80451F28:
.incbin "baserom.dol", 0x3D0D88, 0x4

.global lbl_80451F2C
lbl_80451F2C:
.incbin "baserom.dol", 0x3D0D8C, 0x4

.global lbl_80451F30
lbl_80451F30:
.incbin "baserom.dol", 0x3D0D90, 0x4

.global lbl_80451F34
lbl_80451F34:
.incbin "baserom.dol", 0x3D0D94, 0x4

