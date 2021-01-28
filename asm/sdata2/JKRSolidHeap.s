.include "macros.inc"
.section .sdata2, "a"  # 0x80455fa8 - 0x80455fc0

.global lbl_80455FA8
lbl_80455FA8:
.incbin "baserom.dol", 0x3D4E08, 0x8

.global lbl_80455FB0
lbl_80455FB0:
.incbin "baserom.dol", 0x3D4E10, 0x8

.global lbl_80455FB8
lbl_80455FB8:
.incbin "baserom.dol", 0x3D4E18, 0x8

