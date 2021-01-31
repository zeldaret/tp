.include "macros.inc"
.section .sdata2, "a"  # 0x80456660 - 0x80456668

.global lbl_80456660
lbl_80456660:
.incbin "baserom.dol", 0x3D54C0, 0x8

