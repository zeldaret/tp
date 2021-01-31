.include "macros.inc"
.section .sdata2, "a"  # 0x80456220 - 0x80456240

.global lbl_80456220
lbl_80456220:
.incbin "baserom.dol", 0x3D5080, 0x4

.global lbl_80456224
lbl_80456224:
.incbin "baserom.dol", 0x3D5084, 0x4

.global lbl_80456228
lbl_80456228:
.incbin "baserom.dol", 0x3D5088, 0x8

.global lbl_80456230
lbl_80456230:
.incbin "baserom.dol", 0x3D5090, 0x8

.global lbl_80456238
lbl_80456238:
.incbin "baserom.dol", 0x3D5098, 0x4

.global lbl_8045623C
lbl_8045623C:
.incbin "baserom.dol", 0x3D509C, 0x4

