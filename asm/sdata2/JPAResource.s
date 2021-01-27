.include "macros.inc"
.section .sdata2, "a"  # 0x80455290 - 0x804552a8

.global lbl_80455290
lbl_80455290:
.incbin "baserom.dol", 0x3D40F0, 0x4

.global lbl_80455294
lbl_80455294:
.incbin "baserom.dol", 0x3D40F4, 0x4

.global lbl_80455298
lbl_80455298:
.incbin "baserom.dol", 0x3D40F8, 0x4

.global lbl_8045529C
lbl_8045529C:
.incbin "baserom.dol", 0x3D40FC, 0x4

.global lbl_804552A0
lbl_804552A0:
.incbin "baserom.dol", 0x3D4100, 0x8

