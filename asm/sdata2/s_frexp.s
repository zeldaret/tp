.include "macros.inc"
.section .sdata2, "a"  # 0x80456b08 - 0x80456b10

.global lbl_80456B08
lbl_80456B08:
.incbin "baserom.dol", 0x3D5968, 0x8

