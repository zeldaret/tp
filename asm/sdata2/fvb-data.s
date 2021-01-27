.include "macros.inc"
.section .sdata2, "a"  # 0x80455450 - 0x80455458

.global lbl_80455450
lbl_80455450:
.incbin "baserom.dol", 0x3D42B0, 0x8

