.include "macros.inc"
.section .sdata2, "a"  # 0x80455810 - 0x80455818

.global lbl_80455810
lbl_80455810:
.incbin "baserom.dol", 0x3D4670, 0x8

