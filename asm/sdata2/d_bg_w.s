.include "macros.inc"
.section .sdata2, "a"  # 0x804526f8 - 0x80452718

.global lbl_804526F8
lbl_804526F8:
.incbin "baserom.dol", 0x3D1558, 0x4

.global lbl_804526FC
lbl_804526FC:
.incbin "baserom.dol", 0x3D155C, 0x4

.global lbl_80452700
lbl_80452700:
.incbin "baserom.dol", 0x3D1560, 0x4

.global lbl_80452704
lbl_80452704:
.incbin "baserom.dol", 0x3D1564, 0x4

.global lbl_80452708
lbl_80452708:
.incbin "baserom.dol", 0x3D1568, 0x4

.global lbl_8045270C
lbl_8045270C:
.incbin "baserom.dol", 0x3D156C, 0x4

.global lbl_80452710
lbl_80452710:
.incbin "baserom.dol", 0x3D1570, 0x8

