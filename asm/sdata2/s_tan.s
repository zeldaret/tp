.include "macros.inc"
.section .sdata2, "a"  # 0x80456b40 - 0x80456b48

.global lbl_80456B40
lbl_80456B40:
.incbin "baserom.dol", 0x3D59A0, 0x8

