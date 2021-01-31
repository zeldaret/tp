.include "macros.inc"
.section .sdata2, "a"  # 0x80456018 - 0x80456050

.global lbl_80456018
lbl_80456018:
.incbin "baserom.dol", 0x3D4E78, 0x8

.global lbl_80456020
lbl_80456020:
.incbin "baserom.dol", 0x3D4E80, 0x8

.global lbl_80456028
lbl_80456028:
.incbin "baserom.dol", 0x3D4E88, 0x8

.global lbl_80456030
lbl_80456030:
.incbin "baserom.dol", 0x3D4E90, 0x8

.global lbl_80456038
lbl_80456038:
.incbin "baserom.dol", 0x3D4E98, 0x8

.global lbl_80456040
lbl_80456040:
.incbin "baserom.dol", 0x3D4EA0, 0x8

.global lbl_80456048
lbl_80456048:
.incbin "baserom.dol", 0x3D4EA8, 0x4

.global lbl_8045604C
lbl_8045604C:
.incbin "baserom.dol", 0x3D4EAC, 0x4

