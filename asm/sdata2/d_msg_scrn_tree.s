.include "macros.inc"
.section .sdata2, "a"  # 0x80454d58 - 0x80454d70

.global lbl_80454D58
lbl_80454D58:
.incbin "baserom.dol", 0x3D3BB8, 0x4

.global lbl_80454D5C
lbl_80454D5C:
.incbin "baserom.dol", 0x3D3BBC, 0x4

.global lbl_80454D60
lbl_80454D60:
.incbin "baserom.dol", 0x3D3BC0, 0x8

.global lbl_80454D68
lbl_80454D68:
.incbin "baserom.dol", 0x3D3BC8, 0x8

