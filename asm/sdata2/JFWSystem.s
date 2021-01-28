.include "macros.inc"
.section .sdata2, "a"  # 0x80455240 - 0x80455250

.global lbl_80455240
lbl_80455240:
.incbin "baserom.dol", 0x3D40A0, 0x4

.global lbl_80455244
lbl_80455244:
.incbin "baserom.dol", 0x3D40A4, 0x4

.global lbl_80455248
lbl_80455248:
.incbin "baserom.dol", 0x3D40A8, 0x8

