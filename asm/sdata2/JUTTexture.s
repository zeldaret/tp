.include "macros.inc"
.section .sdata2, "a"  # 0x80455fd8 - 0x80455ff0

.global lbl_80455FD8
lbl_80455FD8:
.incbin "baserom.dol", 0x3D4E38, 0x4

.global lbl_80455FDC
lbl_80455FDC:
.incbin "baserom.dol", 0x3D4E3C, 0x4

.global lbl_80455FE0
lbl_80455FE0:
.incbin "baserom.dol", 0x3D4E40, 0x8

.global lbl_80455FE8
lbl_80455FE8:
.incbin "baserom.dol", 0x3D4E48, 0x8

