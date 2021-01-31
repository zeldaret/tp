.include "macros.inc"
.section .sdata2, "a"  # 0x80454108 - 0x80454120

.global lbl_80454108
lbl_80454108:
.incbin "baserom.dol", 0x3D2F68, 0x4

.global lbl_8045410C
lbl_8045410C:
.incbin "baserom.dol", 0x3D2F6C, 0x4

.global lbl_80454110
lbl_80454110:
.incbin "baserom.dol", 0x3D2F70, 0x4

.global lbl_80454114
lbl_80454114:
.incbin "baserom.dol", 0x3D2F74, 0x4

.global lbl_80454118
lbl_80454118:
.incbin "baserom.dol", 0x3D2F78, 0x8

