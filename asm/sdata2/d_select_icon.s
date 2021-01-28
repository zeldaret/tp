.include "macros.inc"
.section .sdata2, "a"  # 0x80453a70 - 0x80453a88

.global lbl_80453A70
lbl_80453A70:
.incbin "baserom.dol", 0x3D28D0, 0x8

.global lbl_80453A78
lbl_80453A78:
.incbin "baserom.dol", 0x3D28D8, 0x8

.global lbl_80453A80
lbl_80453A80:
.incbin "baserom.dol", 0x3D28E0, 0x8

