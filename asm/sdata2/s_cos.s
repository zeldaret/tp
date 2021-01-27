.include "macros.inc"
.section .sdata2, "a"  # 0x80456af0 - 0x80456af8

.global lbl_80456AF0
lbl_80456AF0:
.incbin "baserom.dol", 0x3D5950, 0x8

