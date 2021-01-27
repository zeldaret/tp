.include "macros.inc"
.section .sdata2, "a"  # 0x80455800 - 0x80455810

.global lbl_80455800
lbl_80455800:
.incbin "baserom.dol", 0x3D4660, 0x4

.global lbl_80455804
lbl_80455804:
.incbin "baserom.dol", 0x3D4664, 0x4

.global lbl_80455808
lbl_80455808:
.incbin "baserom.dol", 0x3D4668, 0x8

