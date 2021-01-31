.include "macros.inc"
.section .sdata2, "a"  # 0x80451bc0 - 0x80451bc8

.global lbl_80451BC0
lbl_80451BC0:
.incbin "baserom.dol", 0x3D0A20, 0x4

.global lbl_80451BC4
lbl_80451BC4:
.incbin "baserom.dol", 0x3D0A24, 0x4

