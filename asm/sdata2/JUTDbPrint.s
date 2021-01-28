.include "macros.inc"
.section .sdata2, "a"  # 0x80456008 - 0x80456018

.global lbl_80456008
lbl_80456008:
.incbin "baserom.dol", 0x3D4E68, 0x4

.global lbl_8045600C
lbl_8045600C:
.incbin "baserom.dol", 0x3D4E6C, 0x4

.global lbl_80456010
lbl_80456010:
.incbin "baserom.dol", 0x3D4E70, 0x8

