.include "macros.inc"
.section .sdata2, "a"  # 0x80456300 - 0x80456328

.global lbl_80456300
lbl_80456300:
.incbin "baserom.dol", 0x3D5160, 0x8

.global lbl_80456308
lbl_80456308:
.incbin "baserom.dol", 0x3D5168, 0x8

.global lbl_80456310
lbl_80456310:
.incbin "baserom.dol", 0x3D5170, 0x4

.global lbl_80456314
lbl_80456314:
.incbin "baserom.dol", 0x3D5174, 0x4

.global lbl_80456318
lbl_80456318:
.incbin "baserom.dol", 0x3D5178, 0x4

.global lbl_8045631C
lbl_8045631C:
.incbin "baserom.dol", 0x3D517C, 0x4

.global lbl_80456320
lbl_80456320:
.incbin "baserom.dol", 0x3D5180, 0x8

