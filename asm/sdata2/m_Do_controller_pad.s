.include "macros.inc"
.section .sdata2, "a"  # 0x80451a20 - 0x80451a38

.global lbl_80451A20
lbl_80451A20:
.incbin "baserom.dol", 0x3D0880, 0x4

.global lbl_80451A24
lbl_80451A24:
.incbin "baserom.dol", 0x3D0884, 0x4

.global lbl_80451A28
lbl_80451A28:
.incbin "baserom.dol", 0x3D0888, 0x8

.global lbl_80451A30
lbl_80451A30:
.incbin "baserom.dol", 0x3D0890, 0x8

