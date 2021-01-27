.include "macros.inc"
.section .sdata2, "a"  # 0x80454fb0 - 0x80454ff0

.global lbl_80454FB0
lbl_80454FB0:
.incbin "baserom.dol", 0x3D3E10, 0x4

.global lbl_80454FB4
lbl_80454FB4:
.incbin "baserom.dol", 0x3D3E14, 0x4

.global lbl_80454FB8
lbl_80454FB8:
.incbin "baserom.dol", 0x3D3E18, 0x4

.global lbl_80454FBC
lbl_80454FBC:
.incbin "baserom.dol", 0x3D3E1C, 0x4

.global lbl_80454FC0
lbl_80454FC0:
.incbin "baserom.dol", 0x3D3E20, 0x8

.global lbl_80454FC8
lbl_80454FC8:
.incbin "baserom.dol", 0x3D3E28, 0x8

.global lbl_80454FD0
lbl_80454FD0:
.incbin "baserom.dol", 0x3D3E30, 0x8

.global lbl_80454FD8
lbl_80454FD8:
.incbin "baserom.dol", 0x3D3E38, 0x8

.global lbl_80454FE0
lbl_80454FE0:
.incbin "baserom.dol", 0x3D3E40, 0x4

.global lbl_80454FE4
lbl_80454FE4:
.incbin "baserom.dol", 0x3D3E44, 0x4

.global lbl_80454FE8
lbl_80454FE8:
.incbin "baserom.dol", 0x3D3E48, 0x8

