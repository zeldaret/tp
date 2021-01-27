.include "macros.inc"
.section .sdata2, "a"  # 0x80455740 - 0x80455748

.global lbl_80455740
lbl_80455740:
.incbin "baserom.dol", 0x3D45A0, 0x8

