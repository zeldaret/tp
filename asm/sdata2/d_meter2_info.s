.include "macros.inc"
.section .sdata2, "a"  # 0x80454998 - 0x804549c8

.global lbl_80454998
lbl_80454998:
.incbin "baserom.dol", 0x3D37F8, 0x4

.global lbl_8045499C
lbl_8045499C:
.incbin "baserom.dol", 0x3D37FC, 0x4

.global lbl_804549A0
lbl_804549A0:
.incbin "baserom.dol", 0x3D3800, 0x4

.global lbl_804549A4
lbl_804549A4:
.incbin "baserom.dol", 0x3D3804, 0x4

.global lbl_804549A8
lbl_804549A8:
.incbin "baserom.dol", 0x3D3808, 0x4

.global lbl_804549AC
lbl_804549AC:
.incbin "baserom.dol", 0x3D380C, 0x4

.global lbl_804549B0
lbl_804549B0:
.incbin "baserom.dol", 0x3D3810, 0x8

.global lbl_804549B8
lbl_804549B8:
.incbin "baserom.dol", 0x3D3818, 0x8

.global lbl_804549C0
lbl_804549C0:
.incbin "baserom.dol", 0x3D3820, 0x8

