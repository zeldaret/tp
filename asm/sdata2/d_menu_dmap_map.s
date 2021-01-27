.include "macros.inc"
.section .sdata2, "a"  # 0x80454060 - 0x804540d8

.global lbl_80454060
lbl_80454060:
.incbin "baserom.dol", 0x3D2EC0, 0x4

.global lbl_80454064
lbl_80454064:
.incbin "baserom.dol", 0x3D2EC4, 0x8

.global lbl_8045406C
lbl_8045406C:
.incbin "baserom.dol", 0x3D2ECC, 0x8

.global lbl_80454074
lbl_80454074:
.incbin "baserom.dol", 0x3D2ED4, 0x8

.global lbl_8045407C
lbl_8045407C:
.incbin "baserom.dol", 0x3D2EDC, 0x8

.global lbl_80454084
lbl_80454084:
.incbin "baserom.dol", 0x3D2EE4, 0x8

.global lbl_8045408C
lbl_8045408C:
.incbin "baserom.dol", 0x3D2EEC, 0x8

.global lbl_80454094
lbl_80454094:
.incbin "baserom.dol", 0x3D2EF4, 0x4

.global lbl_80454098
lbl_80454098:
.incbin "baserom.dol", 0x3D2EF8, 0x8

.global lbl_804540A0
lbl_804540A0:
.incbin "baserom.dol", 0x3D2F00, 0x8

.global lbl_804540A8
lbl_804540A8:
.incbin "baserom.dol", 0x3D2F08, 0x8

.global lbl_804540B0
lbl_804540B0:
.incbin "baserom.dol", 0x3D2F10, 0x8

.global lbl_804540B8
lbl_804540B8:
.incbin "baserom.dol", 0x3D2F18, 0x4

.global lbl_804540BC
lbl_804540BC:
.incbin "baserom.dol", 0x3D2F1C, 0x4

.global lbl_804540C0
lbl_804540C0:
.incbin "baserom.dol", 0x3D2F20, 0x4

.global lbl_804540C4
lbl_804540C4:
.incbin "baserom.dol", 0x3D2F24, 0x4

.global lbl_804540C8
lbl_804540C8:
.incbin "baserom.dol", 0x3D2F28, 0x4

.global lbl_804540CC
lbl_804540CC:
.incbin "baserom.dol", 0x3D2F2C, 0x4

.global lbl_804540D0
lbl_804540D0:
.incbin "baserom.dol", 0x3D2F30, 0x8

