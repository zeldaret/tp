.include "macros.inc"
.section .sdata2, "a"  # 0x80454ba8 - 0x80454bb0

.global lbl_80454BA8
lbl_80454BA8:
.incbin "baserom.dol", 0x3D3A08, 0x4

.global lbl_80454BAC
lbl_80454BAC:
.incbin "baserom.dol", 0x3D3A0C, 0x4

