.include "macros.inc"
.section .sdata2, "a"  # 0x80454eb8 - 0x80454ed8

.global lbl_80454EB8
lbl_80454EB8:
.incbin "baserom.dol", 0x3D3D18, 0x8

.global lbl_80454EC0
lbl_80454EC0:
.incbin "baserom.dol", 0x3D3D20, 0x8

.global lbl_80454EC8
lbl_80454EC8:
.incbin "baserom.dol", 0x3D3D28, 0x8

.global lbl_80454ED0
lbl_80454ED0:
.incbin "baserom.dol", 0x3D3D30, 0x8

