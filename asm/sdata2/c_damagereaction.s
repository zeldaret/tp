.include "macros.inc"
.section .sdata2, "a"  # 0x80451ba8 - 0x80451bc0

.global lbl_80451BA8
lbl_80451BA8:
.incbin "baserom.dol", 0x3D0A08, 0x4

.global lbl_80451BAC
lbl_80451BAC:
.incbin "baserom.dol", 0x3D0A0C, 0x4

.global lbl_80451BB0
lbl_80451BB0:
.incbin "baserom.dol", 0x3D0A10, 0x4

.global lbl_80451BB4
lbl_80451BB4:
.incbin "baserom.dol", 0x3D0A14, 0x4

.global lbl_80451BB8
lbl_80451BB8:
.incbin "baserom.dol", 0x3D0A18, 0x8

