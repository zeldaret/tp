.include "macros.inc"
.section .sdata2, "a"  # 0x80453ad0 - 0x80453b00

.global lbl_80453AD0
lbl_80453AD0:
.incbin "baserom.dol", 0x3D2930, 0x8

.global lbl_80453AD8
lbl_80453AD8:
.incbin "baserom.dol", 0x3D2938, 0x8

.global lbl_80453AE0
lbl_80453AE0:
.incbin "baserom.dol", 0x3D2940, 0x8

.global lbl_80453AE8
lbl_80453AE8:
.incbin "baserom.dol", 0x3D2948, 0x8

.global lbl_80453AF0
lbl_80453AF0:
.incbin "baserom.dol", 0x3D2950, 0x4

.global lbl_80453AF4
lbl_80453AF4:
.incbin "baserom.dol", 0x3D2954, 0x4

.global lbl_80453AF8
lbl_80453AF8:
.incbin "baserom.dol", 0x3D2958, 0x4

.global lbl_80453AFC
lbl_80453AFC:
.incbin "baserom.dol", 0x3D295C, 0x4

