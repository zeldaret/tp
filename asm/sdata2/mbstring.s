.include "macros.inc"
.section .sdata2, "a"  # 0x80456668 - 0x80456670

.global lbl_80456668
lbl_80456668:
.incbin "baserom.dol", 0x3D54C8, 0x8

