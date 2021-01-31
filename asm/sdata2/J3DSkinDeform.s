.include "macros.inc"
.section .sdata2, "a"  # 0x80456468 - 0x80456470

.global lbl_80456468
lbl_80456468:
.incbin "baserom.dol", 0x3D52C8, 0x4

.global lbl_8045646C
lbl_8045646C:
.incbin "baserom.dol", 0x3D52CC, 0x4

