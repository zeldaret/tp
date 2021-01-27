.include "macros.inc"
.section .sdata2, "a"  # 0x80451d58 - 0x80451d60

.global lbl_80451D58
lbl_80451D58:
.incbin "baserom.dol", 0x3D0BB8, 0x4

.global lbl_80451D5C
lbl_80451D5C:
.incbin "baserom.dol", 0x3D0BBC, 0x4

