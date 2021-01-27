.include "macros.inc"
.section .sdata2, "a"  # 0x80455838 - 0x80455858

.global lbl_80455838
lbl_80455838:
.incbin "baserom.dol", 0x3D4698, 0x4

.global lbl_8045583C
lbl_8045583C:
.incbin "baserom.dol", 0x3D469C, 0x4

.global lbl_80455840
lbl_80455840:
.incbin "baserom.dol", 0x3D46A0, 0x4

.global lbl_80455844
lbl_80455844:
.incbin "baserom.dol", 0x3D46A4, 0x4

.global lbl_80455848
lbl_80455848:
.incbin "baserom.dol", 0x3D46A8, 0x8

.global lbl_80455850
lbl_80455850:
.incbin "baserom.dol", 0x3D46B0, 0x8

