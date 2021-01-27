.include "macros.inc"
.section .sdata2, "a"  # 0x80454ef8 - 0x80454f18

.global lbl_80454EF8
lbl_80454EF8:
.incbin "baserom.dol", 0x3D3D58, 0x4

.global lbl_80454EFC
lbl_80454EFC:
.incbin "baserom.dol", 0x3D3D5C, 0x4

.global lbl_80454F00
lbl_80454F00:
.incbin "baserom.dol", 0x3D3D60, 0x4

.global lbl_80454F04
lbl_80454F04:
.incbin "baserom.dol", 0x3D3D64, 0x4

.global lbl_80454F08
lbl_80454F08:
.incbin "baserom.dol", 0x3D3D68, 0x4

.global lbl_80454F0C
lbl_80454F0C:
.incbin "baserom.dol", 0x3D3D6C, 0x4

.global lbl_80454F10
lbl_80454F10:
.incbin "baserom.dol", 0x3D3D70, 0x8

