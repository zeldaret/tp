.include "macros.inc"
.section .sdata2, "a"  # 0x80456a80 - 0x80456ab8

.global lbl_80456A80
lbl_80456A80:
.incbin "baserom.dol", 0x3D58E0, 0x8

.global lbl_80456A88
lbl_80456A88:
.incbin "baserom.dol", 0x3D58E8, 0x8

.global lbl_80456A90
lbl_80456A90:
.incbin "baserom.dol", 0x3D58F0, 0x8

.global lbl_80456A98
lbl_80456A98:
.incbin "baserom.dol", 0x3D58F8, 0x8

.global lbl_80456AA0
lbl_80456AA0:
.incbin "baserom.dol", 0x3D5900, 0x8

.global lbl_80456AA8
lbl_80456AA8:
.incbin "baserom.dol", 0x3D5908, 0x8

.global lbl_80456AB0
lbl_80456AB0:
.incbin "baserom.dol", 0x3D5910, 0x8

