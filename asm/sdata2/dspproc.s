.include "macros.inc"
.section .sdata2, "a"  # 0x80455770 - 0x80455778

.global lbl_80455770
lbl_80455770:
.incbin "baserom.dol", 0x3D45D0, 0x8

