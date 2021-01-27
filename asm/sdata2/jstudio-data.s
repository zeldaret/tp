.include "macros.inc"
.section .sdata2, "a"  # 0x80455460 - 0x80455468

.global lbl_80455460
lbl_80455460:
.incbin "baserom.dol", 0x3D42C0, 0x8

