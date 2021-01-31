.include "macros.inc"
.section .sdata2, "a"  # 0x80454d70 - 0x80454d78

.global lbl_80454D70
lbl_80454D70:
.incbin "baserom.dol", 0x3D3BD0, 0x8

