.include "macros.inc"
.section .sdata2, "a"  # 0x80454800 - 0x80454820

.global lbl_80454800
lbl_80454800:
.incbin "baserom.dol", 0x3D3660, 0x4

.global lbl_80454804
lbl_80454804:
.incbin "baserom.dol", 0x3D3664, 0x4

.global lbl_80454808
lbl_80454808:
.incbin "baserom.dol", 0x3D3668, 0x4

.global lbl_8045480C
lbl_8045480C:
.incbin "baserom.dol", 0x3D366C, 0x4

.global lbl_80454810
lbl_80454810:
.incbin "baserom.dol", 0x3D3670, 0x4

.global lbl_80454814
lbl_80454814:
.incbin "baserom.dol", 0x3D3674, 0x4

.global lbl_80454818
lbl_80454818:
.incbin "baserom.dol", 0x3D3678, 0x8

