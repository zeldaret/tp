.include "macros.inc"
.section .sdata2, "a"  # 0x80455630 - 0x80455640

.global lbl_80455630
lbl_80455630:
.incbin "baserom.dol", 0x3D4490, 0x4

.global lbl_80455634
lbl_80455634:
.incbin "baserom.dol", 0x3D4494, 0x4

.global lbl_80455638
lbl_80455638:
.incbin "baserom.dol", 0x3D4498, 0x4

.global lbl_8045563C
lbl_8045563C:
.incbin "baserom.dol", 0x3D449C, 0x4

