.include "macros.inc"
.section .sdata2, "a"  # 0x80451ed0 - 0x80451f00

.global lbl_80451ED0
lbl_80451ED0:
.incbin "baserom.dol", 0x3D0D30, 0x4

.global lbl_80451ED4
lbl_80451ED4:
.incbin "baserom.dol", 0x3D0D34, 0x4

.global lbl_80451ED8
lbl_80451ED8:
.incbin "baserom.dol", 0x3D0D38, 0x8

.global lbl_80451EE0
lbl_80451EE0:
.incbin "baserom.dol", 0x3D0D40, 0x8

.global lbl_80451EE8
lbl_80451EE8:
.incbin "baserom.dol", 0x3D0D48, 0x8

.global lbl_80451EF0
lbl_80451EF0:
.incbin "baserom.dol", 0x3D0D50, 0x4

.global lbl_80451EF4
lbl_80451EF4:
.incbin "baserom.dol", 0x3D0D54, 0x4

.global lbl_80451EF8
lbl_80451EF8:
.incbin "baserom.dol", 0x3D0D58, 0x4

.global lbl_80451EFC
lbl_80451EFC:
.incbin "baserom.dol", 0x3D0D5C, 0x4

