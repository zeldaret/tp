.include "macros.inc"
.section .sdata2, "a"  # 0x80455358 - 0x80455370

.global lbl_80455358
lbl_80455358:
.incbin "baserom.dol", 0x3D41B8, 0x4

.global lbl_8045535C
lbl_8045535C:
.incbin "baserom.dol", 0x3D41BC, 0x4

.global lbl_80455360
lbl_80455360:
.incbin "baserom.dol", 0x3D41C0, 0x4

.global lbl_80455364
lbl_80455364:
.incbin "baserom.dol", 0x3D41C4, 0x4

.global lbl_80455368
lbl_80455368:
.incbin "baserom.dol", 0x3D41C8, 0x8

