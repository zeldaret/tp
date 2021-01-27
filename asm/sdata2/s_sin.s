.include "macros.inc"
.section .sdata2, "a"  # 0x80456b38 - 0x80456b40

.global lbl_80456B38
lbl_80456B38:
.incbin "baserom.dol", 0x3D5998, 0x8

