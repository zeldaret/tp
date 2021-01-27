.include "macros.inc"
.section .sdata2, "a"  # 0x80452bc8 - 0x80452bd8

.global lbl_80452BC8
lbl_80452BC8:
.incbin "baserom.dol", 0x3D1A28, 0x8

.global lbl_80452BD0
lbl_80452BD0:
.incbin "baserom.dol", 0x3D1A30, 0x4

.global lbl_80452BD4
lbl_80452BD4:
.incbin "baserom.dol", 0x3D1A34, 0x4

