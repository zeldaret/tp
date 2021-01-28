.include "macros.inc"
.section .sdata2, "a"  # 0x80455588 - 0x804555a0

.global lbl_80455588
lbl_80455588:
.incbin "baserom.dol", 0x3D43E8, 0x4

.global lbl_8045558C
lbl_8045558C:
.incbin "baserom.dol", 0x3D43EC, 0x4

.global lbl_80455590
lbl_80455590:
.incbin "baserom.dol", 0x3D43F0, 0x8

.global lbl_80455598
lbl_80455598:
.incbin "baserom.dol", 0x3D43F8, 0x8

