.include "macros.inc"
.section .sdata2, "a"  # 0x80451c70 - 0x80451c90

.global lbl_80451C70
lbl_80451C70:
.incbin "baserom.dol", 0x3D0AD0, 0x4

.global lbl_80451C74
lbl_80451C74:
.incbin "baserom.dol", 0x3D0AD4, 0x4

.global lbl_80451C78
lbl_80451C78:
.incbin "baserom.dol", 0x3D0AD8, 0x4

.global lbl_80451C7C
lbl_80451C7C:
.incbin "baserom.dol", 0x3D0ADC, 0x4

.global lbl_80451C80
lbl_80451C80:
.incbin "baserom.dol", 0x3D0AE0, 0x4

.global lbl_80451C84
lbl_80451C84:
.incbin "baserom.dol", 0x3D0AE4, 0x4

.global lbl_80451C88
lbl_80451C88:
.incbin "baserom.dol", 0x3D0AE8, 0x8

