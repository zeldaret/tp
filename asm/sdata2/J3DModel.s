.include "macros.inc"
.section .sdata2, "a"  # 0x80456428 - 0x80456430

.global lbl_80456428
lbl_80456428:
.incbin "baserom.dol", 0x3D5288, 0x8

