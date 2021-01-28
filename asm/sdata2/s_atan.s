.include "macros.inc"
.section .sdata2, "a"  # 0x80456ab8 - 0x80456ae0

.global lbl_80456AB8
lbl_80456AB8:
.incbin "baserom.dol", 0x3D5918, 0x8

.global lbl_80456AC0
lbl_80456AC0:
.incbin "baserom.dol", 0x3D5920, 0x8

.global lbl_80456AC8
lbl_80456AC8:
.incbin "baserom.dol", 0x3D5928, 0x8

.global lbl_80456AD0
lbl_80456AD0:
.incbin "baserom.dol", 0x3D5930, 0x8

.global lbl_80456AD8
lbl_80456AD8:
.incbin "baserom.dol", 0x3D5938, 0x8

