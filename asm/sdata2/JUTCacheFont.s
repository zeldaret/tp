.include "macros.inc"
.section .sdata2, "a"  # 0x80455fd0 - 0x80455fd8

.global lbl_80455FD0
lbl_80455FD0:
.incbin "baserom.dol", 0x3D4E30, 0x8

