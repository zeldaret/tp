.include "macros.inc"
.section .sdata2, "a"  # 0x80454b98 - 0x80454ba8

.global lbl_80454B98
lbl_80454B98:
.incbin "baserom.dol", 0x3D39F8, 0x4

.global lbl_80454B9C
lbl_80454B9C:
.incbin "baserom.dol", 0x3D39FC, 0x4

.global lbl_80454BA0
lbl_80454BA0:
.incbin "baserom.dol", 0x3D3A00, 0x8

