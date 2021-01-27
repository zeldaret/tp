.include "macros.inc"
.section .sdata2, "a"  # 0x80454de8 - 0x80454e20

.global lbl_80454DE8
lbl_80454DE8:
.incbin "baserom.dol", 0x3D3C48, 0x4

.global lbl_80454DEC
lbl_80454DEC:
.incbin "baserom.dol", 0x3D3C4C, 0x4

.global lbl_80454DF0
lbl_80454DF0:
.incbin "baserom.dol", 0x3D3C50, 0x8

.global lbl_80454DF8
lbl_80454DF8:
.incbin "baserom.dol", 0x3D3C58, 0x8

.global lbl_80454E00
lbl_80454E00:
.incbin "baserom.dol", 0x3D3C60, 0x8

.global lbl_80454E08
lbl_80454E08:
.incbin "baserom.dol", 0x3D3C68, 0x8

.global lbl_80454E10
lbl_80454E10:
.incbin "baserom.dol", 0x3D3C70, 0x8

.global lbl_80454E18
lbl_80454E18:
.incbin "baserom.dol", 0x3D3C78, 0x8

