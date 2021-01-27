.include "macros.inc"
.section .sdata2, "a"  # 0x80456610 - 0x80456618

.global lbl_80456610
lbl_80456610:
.incbin "baserom.dol", 0x3D5470, 0x8

