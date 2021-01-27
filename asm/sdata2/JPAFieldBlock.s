.include "macros.inc"
.section .sdata2, "a"  # 0x80455338 - 0x80455350

.global lbl_80455338
lbl_80455338:
.incbin "baserom.dol", 0x3D4198, 0x4

.global lbl_8045533C
lbl_8045533C:
.incbin "baserom.dol", 0x3D419C, 0x4

.global lbl_80455340
lbl_80455340:
.incbin "baserom.dol", 0x3D41A0, 0x4

.global lbl_80455344
lbl_80455344:
.incbin "baserom.dol", 0x3D41A4, 0x4

.global lbl_80455348
lbl_80455348:
.incbin "baserom.dol", 0x3D41A8, 0x4

.global lbl_8045534C
lbl_8045534C:
.incbin "baserom.dol", 0x3D41AC, 0x4

