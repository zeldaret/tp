.include "macros.inc"
.section .sdata2, "a"  # 0x80456118 - 0x80456148

.global lbl_80456118
lbl_80456118:
.incbin "baserom.dol", 0x3D4F78, 0x4

.global lbl_8045611C
lbl_8045611C:
.incbin "baserom.dol", 0x3D4F7C, 0x4

.global lbl_80456120
lbl_80456120:
.incbin "baserom.dol", 0x3D4F80, 0x4

.global lbl_80456124
lbl_80456124:
.incbin "baserom.dol", 0x3D4F84, 0x4

.global lbl_80456128
lbl_80456128:
.incbin "baserom.dol", 0x3D4F88, 0x4

.global lbl_8045612C
lbl_8045612C:
.incbin "baserom.dol", 0x3D4F8C, 0x4

.global lbl_80456130
lbl_80456130:
.incbin "baserom.dol", 0x3D4F90, 0x8

.global lbl_80456138
lbl_80456138:
.incbin "baserom.dol", 0x3D4F98, 0x8

.global lbl_80456140
lbl_80456140:
.incbin "baserom.dol", 0x3D4FA0, 0x8

