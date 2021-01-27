.include "macros.inc"
.section .sdata2, "a"  # 0x80454cb0 - 0x80454cc0

.global lbl_80454CB0
lbl_80454CB0:
.incbin "baserom.dol", 0x3D3B10, 0x4

.global lbl_80454CB4
lbl_80454CB4:
.incbin "baserom.dol", 0x3D3B14, 0x4

.global lbl_80454CB8
lbl_80454CB8:
.incbin "baserom.dol", 0x3D3B18, 0x8

