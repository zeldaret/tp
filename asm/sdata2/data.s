.include "macros.inc"
.section .sdata2, "a"  # 0x80455818 - 0x80455820

.global lbl_80455818
lbl_80455818:
.incbin "baserom.dol", 0x3D4678, 0x8

