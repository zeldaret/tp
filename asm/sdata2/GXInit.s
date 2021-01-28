.include "macros.inc"
.section .sdata2, "a"  # 0x80456580 - 0x804565a8

.global lbl_80456580
lbl_80456580:
.incbin "baserom.dol", 0x3D53E0, 0x4

.global lbl_80456584
lbl_80456584:
.incbin "baserom.dol", 0x3D53E4, 0x4

.global lbl_80456588
lbl_80456588:
.incbin "baserom.dol", 0x3D53E8, 0x4

.global lbl_8045658C
lbl_8045658C:
.incbin "baserom.dol", 0x3D53EC, 0x4

.global lbl_80456590
lbl_80456590:
.incbin "baserom.dol", 0x3D53F0, 0x4

.global lbl_80456594
lbl_80456594:
.incbin "baserom.dol", 0x3D53F4, 0x4

.global lbl_80456598
lbl_80456598:
.incbin "baserom.dol", 0x3D53F8, 0x4

.global lbl_8045659C
lbl_8045659C:
.incbin "baserom.dol", 0x3D53FC, 0x4

.global lbl_804565A0
lbl_804565A0:
.incbin "baserom.dol", 0x3D5400, 0x8

