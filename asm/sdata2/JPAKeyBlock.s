.include "macros.inc"
.section .sdata2, "a"  # 0x80455350 - 0x80455358

.global lbl_80455350
lbl_80455350:
.incbin "baserom.dol", 0x3D41B0, 0x8

