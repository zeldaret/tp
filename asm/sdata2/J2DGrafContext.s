.include "macros.inc"
.section .sdata2, "a"  # 0x80456148 - 0x80456160

.global lbl_80456148
lbl_80456148:
.incbin "baserom.dol", 0x3D4FA8, 0x4

.global lbl_8045614C
lbl_8045614C:
.incbin "baserom.dol", 0x3D4FAC, 0x4

.global lbl_80456150
lbl_80456150:
.incbin "baserom.dol", 0x3D4FB0, 0x8

.global lbl_80456158
lbl_80456158:
.incbin "baserom.dol", 0x3D4FB8, 0x8

