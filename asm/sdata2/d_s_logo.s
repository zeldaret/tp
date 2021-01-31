.include "macros.inc"
.section .sdata2, "a"  # 0x80454ed8 - 0x80454ef8

.global lbl_80454ED8
lbl_80454ED8:
.incbin "baserom.dol", 0x3D3D38, 0x4

.global lbl_80454EDC
lbl_80454EDC:
.incbin "baserom.dol", 0x3D3D3C, 0x4

.global lbl_80454EE0
lbl_80454EE0:
.incbin "baserom.dol", 0x3D3D40, 0x4

.global lbl_80454EE4
lbl_80454EE4:
.incbin "baserom.dol", 0x3D3D44, 0x4

.global lbl_80454EE8
lbl_80454EE8:
.incbin "baserom.dol", 0x3D3D48, 0x4

.global lbl_80454EEC
lbl_80454EEC:
.incbin "baserom.dol", 0x3D3D4C, 0x4

.global lbl_80454EF0
lbl_80454EF0:
.incbin "baserom.dol", 0x3D3D50, 0x8

