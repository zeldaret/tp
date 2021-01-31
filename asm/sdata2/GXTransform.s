.include "macros.inc"
.section .sdata2, "a"  # 0x80456650 - 0x80456660

.global lbl_80456650
lbl_80456650:
.incbin "baserom.dol", 0x3D54B0, 0x4

.global lbl_80456654
lbl_80456654:
.incbin "baserom.dol", 0x3D54B4, 0x4

.global lbl_80456658
lbl_80456658:
.incbin "baserom.dol", 0x3D54B8, 0x4

.global lbl_8045665C
lbl_8045665C:
.incbin "baserom.dol", 0x3D54BC, 0x4

