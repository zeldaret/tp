.include "macros.inc"
.section .sdata2, "a"  # 0x80451bc8 - 0x80451c00

.global lbl_80451BC8
lbl_80451BC8:
.incbin "baserom.dol", 0x3D0A28, 0x4

.global lbl_80451BCC
lbl_80451BCC:
.incbin "baserom.dol", 0x3D0A2C, 0x4

.global lbl_80451BD0
lbl_80451BD0:
.incbin "baserom.dol", 0x3D0A30, 0x4

.global lbl_80451BD4
lbl_80451BD4:
.incbin "baserom.dol", 0x3D0A34, 0x4

.global lbl_80451BD8
lbl_80451BD8:
.incbin "baserom.dol", 0x3D0A38, 0x8

.global lbl_80451BE0
lbl_80451BE0:
.incbin "baserom.dol", 0x3D0A40, 0x8

.global lbl_80451BE8
lbl_80451BE8:
.incbin "baserom.dol", 0x3D0A48, 0x8

.global lbl_80451BF0
lbl_80451BF0:
.incbin "baserom.dol", 0x3D0A50, 0x4

.global lbl_80451BF4
lbl_80451BF4:
.incbin "baserom.dol", 0x3D0A54, 0x4

.global lbl_80451BF8
lbl_80451BF8:
.incbin "baserom.dol", 0x3D0A58, 0x8

