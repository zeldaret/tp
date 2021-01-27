.include "macros.inc"
.section .sdata2, "a"  # 0x80456240 - 0x80456260

.global lbl_80456240
lbl_80456240:
.incbin "baserom.dol", 0x3D50A0, 0x8

.global lbl_80456248
lbl_80456248:
.incbin "baserom.dol", 0x3D50A8, 0x8

.global lbl_80456250
lbl_80456250:
.incbin "baserom.dol", 0x3D50B0, 0x4

.global lbl_80456254
lbl_80456254:
.incbin "baserom.dol", 0x3D50B4, 0x4

.global lbl_80456258
lbl_80456258:
.incbin "baserom.dol", 0x3D50B8, 0x8

