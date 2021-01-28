.include "macros.inc"
.section .sdata2, "a"  # 0x80453a00 - 0x80453a10

.global lbl_80453A00
lbl_80453A00:
.incbin "baserom.dol", 0x3D2860, 0x4

.global lbl_80453A04
lbl_80453A04:
.incbin "baserom.dol", 0x3D2864, 0x4

.global lbl_80453A08
lbl_80453A08:
.incbin "baserom.dol", 0x3D2868, 0x8

