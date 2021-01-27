.include "macros.inc"
.section .sdata2, "a"  # 0x80455250 - 0x80455278

.global lbl_80455250
lbl_80455250:
.incbin "baserom.dol", 0x3D40B0, 0x4

.global lbl_80455254
lbl_80455254:
.incbin "baserom.dol", 0x3D40B4, 0x4

.global lbl_80455258
lbl_80455258:
.incbin "baserom.dol", 0x3D40B8, 0x8

.global lbl_80455260
lbl_80455260:
.incbin "baserom.dol", 0x3D40C0, 0x8

.global lbl_80455268
lbl_80455268:
.incbin "baserom.dol", 0x3D40C8, 0x8

.global lbl_80455270
lbl_80455270:
.incbin "baserom.dol", 0x3D40D0, 0x8

