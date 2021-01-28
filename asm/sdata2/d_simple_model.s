.include "macros.inc"
.section .sdata2, "a"  # 0x80451f38 - 0x80451f40

.global lbl_80451F38
lbl_80451F38:
.incbin "baserom.dol", 0x3D0D98, 0x8

