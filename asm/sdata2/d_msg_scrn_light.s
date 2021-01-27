.include "macros.inc"
.section .sdata2, "a"  # 0x80454cd8 - 0x80454ce8

.global lbl_80454CD8
lbl_80454CD8:
.incbin "baserom.dol", 0x3D3B38, 0x4

.global lbl_80454CDC
lbl_80454CDC:
.incbin "baserom.dol", 0x3D3B3C, 0x4

.global lbl_80454CE0
lbl_80454CE0:
.incbin "baserom.dol", 0x3D3B40, 0x8

