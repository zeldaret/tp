.include "macros.inc"
.section .sdata2, "a"  # 0x80452620 - 0x80452628

.global lbl_80452620
lbl_80452620:
.incbin "baserom.dol", 0x3D1480, 0x8

