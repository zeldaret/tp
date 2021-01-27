.include "macros.inc"
.section .sdata2, "a"  # 0x80455008 - 0x80455018

.global lbl_80455008
lbl_80455008:
.incbin "baserom.dol", 0x3D3E68, 0x8

.global lbl_80455010
lbl_80455010:
.incbin "baserom.dol", 0x3D3E70, 0x8

