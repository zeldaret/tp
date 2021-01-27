.include "macros.inc"
.section .sdata2, "a"  # 0x80455ff0 - 0x80456008

.global lbl_80455FF0
lbl_80455FF0:
.incbin "baserom.dol", 0x3D4E50, 0x8

.global lbl_80455FF8
lbl_80455FF8:
.incbin "baserom.dol", 0x3D4E58, 0x8

.global lbl_80456000
lbl_80456000:
.incbin "baserom.dol", 0x3D4E60, 0x8

