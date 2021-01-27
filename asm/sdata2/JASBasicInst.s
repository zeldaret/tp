.include "macros.inc"
.section .sdata2, "a"  # 0x80455640 - 0x80455648

.global lbl_80455640
lbl_80455640:
.incbin "baserom.dol", 0x3D44A0, 0x8

