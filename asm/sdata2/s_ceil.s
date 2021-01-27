.include "macros.inc"
.section .sdata2, "a"  # 0x80456ae0 - 0x80456af0

.global lbl_80456AE0
lbl_80456AE0:
.incbin "baserom.dol", 0x3D5940, 0x8

.global lbl_80456AE8
lbl_80456AE8:
.incbin "baserom.dol", 0x3D5948, 0x8

