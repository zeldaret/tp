.include "macros.inc"
.section .sdata2, "a"  # 0x80454e88 - 0x80454eb8

.global lbl_80454E88
lbl_80454E88:
.incbin "baserom.dol", 0x3D3CE8, 0x8

.global lbl_80454E90
lbl_80454E90:
.incbin "baserom.dol", 0x3D3CF0, 0x8

.global lbl_80454E98
lbl_80454E98:
.incbin "baserom.dol", 0x3D3CF8, 0x8

.global lbl_80454EA0
lbl_80454EA0:
.incbin "baserom.dol", 0x3D3D00, 0x8

.global lbl_80454EA8
lbl_80454EA8:
.incbin "baserom.dol", 0x3D3D08, 0x4

.global lbl_80454EAC
lbl_80454EAC:
.incbin "baserom.dol", 0x3D3D0C, 0x4

.global lbl_80454EB0
lbl_80454EB0:
.incbin "baserom.dol", 0x3D3D10, 0x4

.global lbl_80454EB4
lbl_80454EB4:
.incbin "baserom.dol", 0x3D3D14, 0x4

