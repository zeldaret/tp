.include "macros.inc"
.section .sdata2, "a"  # 0x80454d78 - 0x80454d90

.global lbl_80454D78
lbl_80454D78:
.incbin "baserom.dol", 0x3D3BD8, 0x4

.global lbl_80454D7C
lbl_80454D7C:
.incbin "baserom.dol", 0x3D3BDC, 0x4

.global lbl_80454D80
lbl_80454D80:
.incbin "baserom.dol", 0x3D3BE0, 0x8

.global lbl_80454D88
lbl_80454D88:
.incbin "baserom.dol", 0x3D3BE8, 0x8

