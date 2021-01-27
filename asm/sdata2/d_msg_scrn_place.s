.include "macros.inc"
.section .sdata2, "a"  # 0x80454ce8 - 0x80454cf8

.global lbl_80454CE8
lbl_80454CE8:
.incbin "baserom.dol", 0x3D3B48, 0x4

.global lbl_80454CEC
lbl_80454CEC:
.incbin "baserom.dol", 0x3D3B4C, 0x4

.global lbl_80454CF0
lbl_80454CF0:
.incbin "baserom.dol", 0x3D3B50, 0x8

