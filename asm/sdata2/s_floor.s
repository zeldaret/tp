.include "macros.inc"
.section .sdata2, "a"  # 0x80456af8 - 0x80456b08

.global lbl_80456AF8
lbl_80456AF8:
.incbin "baserom.dol", 0x3D5958, 0x8

.global lbl_80456B00
lbl_80456B00:
.incbin "baserom.dol", 0x3D5960, 0x8

