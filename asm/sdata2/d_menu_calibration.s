.include "macros.inc"
.section .sdata2, "a"  # 0x80453f10 - 0x80453f28

.global lbl_80453F10
lbl_80453F10:
.incbin "baserom.dol", 0x3D2D70, 0x4

.global lbl_80453F14
lbl_80453F14:
.incbin "baserom.dol", 0x3D2D74, 0x4

.global lbl_80453F18
lbl_80453F18:
.incbin "baserom.dol", 0x3D2D78, 0x8

.global lbl_80453F20
lbl_80453F20:
.incbin "baserom.dol", 0x3D2D80, 0x8

