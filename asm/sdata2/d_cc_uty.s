.include "macros.inc"
.section .sdata2, "a"  # 0x80452798 - 0x804527c8

.global lbl_80452798
lbl_80452798:
.incbin "baserom.dol", 0x3D15F8, 0x8

.global lbl_804527A0
lbl_804527A0:
.incbin "baserom.dol", 0x3D1600, 0x8

.global lbl_804527A8
lbl_804527A8:
.incbin "baserom.dol", 0x3D1608, 0x8

.global lbl_804527B0
lbl_804527B0:
.incbin "baserom.dol", 0x3D1610, 0x8

.global lbl_804527B8
lbl_804527B8:
.incbin "baserom.dol", 0x3D1618, 0x4

.global lbl_804527BC
lbl_804527BC:
.incbin "baserom.dol", 0x3D161C, 0x4

.global lbl_804527C0
lbl_804527C0:
.incbin "baserom.dol", 0x3D1620, 0x8

