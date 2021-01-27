.include "macros.inc"
.section .sdata2, "a"  # 0x80454cc0 - 0x80454cd8

.global lbl_80454CC0
lbl_80454CC0:
.incbin "baserom.dol", 0x3D3B20, 0x4

.global lbl_80454CC4
lbl_80454CC4:
.incbin "baserom.dol", 0x3D3B24, 0x4

.global lbl_80454CC8
lbl_80454CC8:
.incbin "baserom.dol", 0x3D3B28, 0x8

.global lbl_80454CD0
lbl_80454CD0:
.incbin "baserom.dol", 0x3D3B30, 0x8

