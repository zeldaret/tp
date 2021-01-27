.include "macros.inc"
.section .sdata2, "a"  # 0x80451b00 - 0x80451b08

.global lbl_80451B00
lbl_80451B00:
.incbin "baserom.dol", 0x3D0960, 0x4

.global lbl_80451B04
lbl_80451B04:
.incbin "baserom.dol", 0x3D0964, 0x4

