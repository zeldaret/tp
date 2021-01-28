.include "macros.inc"
.section .sdata2, "a"  # 0x80455468 - 0x804554a0

.global lbl_80455468
lbl_80455468:
.incbin "baserom.dol", 0x3D42C8, 0x4

.global lbl_8045546C
lbl_8045546C:
.incbin "baserom.dol", 0x3D42CC, 0x4

.global lbl_80455470
lbl_80455470:
.incbin "baserom.dol", 0x3D42D0, 0x8

.global lbl_80455478
lbl_80455478:
.incbin "baserom.dol", 0x3D42D8, 0x8

.global lbl_80455480
lbl_80455480:
.incbin "baserom.dol", 0x3D42E0, 0x8

.global lbl_80455488
lbl_80455488:
.incbin "baserom.dol", 0x3D42E8, 0x8

.global lbl_80455490
lbl_80455490:
.incbin "baserom.dol", 0x3D42F0, 0x8

.global lbl_80455498
lbl_80455498:
.incbin "baserom.dol", 0x3D42F8, 0x8

