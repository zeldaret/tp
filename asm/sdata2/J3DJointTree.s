.include "macros.inc"
.section .sdata2, "a"  # 0x80456418 - 0x80456420

.global lbl_80456418
lbl_80456418:
.incbin "baserom.dol", 0x3D5278, 0x8

