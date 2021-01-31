.include "macros.inc"
.section .sdata2, "a"  # 0x80451a00 - 0x80451a20

.global lbl_80451A00
lbl_80451A00:
.incbin "baserom.dol", 0x3D0860, 0x4

.global lbl_80451A04
lbl_80451A04:
.incbin "baserom.dol", 0x3D0864, 0x4

.global lbl_80451A08
lbl_80451A08:
.incbin "baserom.dol", 0x3D0868, 0x4

.global lbl_80451A0C
lbl_80451A0C:
.incbin "baserom.dol", 0x3D086C, 0x4

.global lbl_80451A10
lbl_80451A10:
.incbin "baserom.dol", 0x3D0870, 0x8

.global lbl_80451A18
lbl_80451A18:
.incbin "baserom.dol", 0x3D0878, 0x8

