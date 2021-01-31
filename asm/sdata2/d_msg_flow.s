.include "macros.inc"
.section .sdata2, "a"  # 0x80454d90 - 0x80454db0

.global lbl_80454D90
lbl_80454D90:
.incbin "baserom.dol", 0x3D3BF0, 0x8

.global lbl_80454D98
lbl_80454D98:
.incbin "baserom.dol", 0x3D3BF8, 0x8

.global lbl_80454DA0
lbl_80454DA0:
.incbin "baserom.dol", 0x3D3C00, 0x8

.global lbl_80454DA8
lbl_80454DA8:
.incbin "baserom.dol", 0x3D3C08, 0x4

.global lbl_80454DAC
lbl_80454DAC:
.incbin "baserom.dol", 0x3D3C0C, 0x4

