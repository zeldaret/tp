.include "macros.inc"
.section .sdata2, "a"  # 0x80454cf8 - 0x80454d00

.global lbl_80454CF8
lbl_80454CF8:
.incbin "baserom.dol", 0x3D3B58, 0x4

.global lbl_80454CFC
lbl_80454CFC:
.incbin "baserom.dol", 0x3D3B5C, 0x4

