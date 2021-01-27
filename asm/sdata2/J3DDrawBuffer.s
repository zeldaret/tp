.include "macros.inc"
.section .sdata2, "a"  # 0x80456400 - 0x80456410

.global lbl_80456400
lbl_80456400:
.incbin "baserom.dol", 0x3D5260, 0x4

.global lbl_80456404
lbl_80456404:
.incbin "baserom.dol", 0x3D5264, 0x4

.global lbl_80456408
lbl_80456408:
.incbin "baserom.dol", 0x3D5268, 0x8

