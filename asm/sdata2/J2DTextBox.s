.include "macros.inc"
.section .sdata2, "a"  # 0x80456280 - 0x804562a0

.global lbl_80456280
lbl_80456280:
.incbin "baserom.dol", 0x3D50E0, 0x8

.global lbl_80456288
lbl_80456288:
.incbin "baserom.dol", 0x3D50E8, 0x8

.global lbl_80456290
lbl_80456290:
.incbin "baserom.dol", 0x3D50F0, 0x8

.global lbl_80456298
lbl_80456298:
.incbin "baserom.dol", 0x3D50F8, 0x8

