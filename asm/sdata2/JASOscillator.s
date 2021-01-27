.include "macros.inc"
.section .sdata2, "a"  # 0x804556f8 - 0x80455720

.global lbl_804556F8
lbl_804556F8:
.incbin "baserom.dol", 0x3D4558, 0x4

.global lbl_804556FC
lbl_804556FC:
.incbin "baserom.dol", 0x3D455C, 0x4

.global lbl_80455700
lbl_80455700:
.incbin "baserom.dol", 0x3D4560, 0x8

.global lbl_80455708
lbl_80455708:
.incbin "baserom.dol", 0x3D4568, 0x8

.global lbl_80455710
lbl_80455710:
.incbin "baserom.dol", 0x3D4570, 0x8

.global lbl_80455718
lbl_80455718:
.incbin "baserom.dol", 0x3D4578, 0x8

