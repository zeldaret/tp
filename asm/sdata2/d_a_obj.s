.include "macros.inc"
.section .sdata2, "a"  # 0x80451d98 - 0x80451db0

.global lbl_80451D98
lbl_80451D98:
.incbin "baserom.dol", 0x3D0BF8, 0x4

.global lbl_80451D9C
lbl_80451D9C:
.incbin "baserom.dol", 0x3D0BFC, 0x4

.global lbl_80451DA0
lbl_80451DA0:
.incbin "baserom.dol", 0x3D0C00, 0x4

.global lbl_80451DA4
lbl_80451DA4:
.incbin "baserom.dol", 0x3D0C04, 0x4

.global lbl_80451DA8
lbl_80451DA8:
.incbin "baserom.dol", 0x3D0C08, 0x8

