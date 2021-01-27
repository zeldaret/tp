.include "macros.inc"
.section .sdata2, "a"  # 0x80453ef8 - 0x80453f10

.global lbl_80453EF8
lbl_80453EF8:
.incbin "baserom.dol", 0x3D2D58, 0x8

.global lbl_80453F00
lbl_80453F00:
.incbin "baserom.dol", 0x3D2D60, 0x8

.global lbl_80453F08
lbl_80453F08:
.incbin "baserom.dol", 0x3D2D68, 0x8

