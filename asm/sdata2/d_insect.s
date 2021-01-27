.include "macros.inc"
.section .sdata2, "a"  # 0x804535e0 - 0x80453600

.global lbl_804535E0
lbl_804535E0:
.incbin "baserom.dol", 0x3D2440, 0x4

.global lbl_804535E4
lbl_804535E4:
.incbin "baserom.dol", 0x3D2444, 0x4

.global lbl_804535E8
lbl_804535E8:
.incbin "baserom.dol", 0x3D2448, 0x4

.global lbl_804535EC
lbl_804535EC:
.incbin "baserom.dol", 0x3D244C, 0x4

.global lbl_804535F0
lbl_804535F0:
.incbin "baserom.dol", 0x3D2450, 0x4

.global lbl_804535F4
lbl_804535F4:
.incbin "baserom.dol", 0x3D2454, 0x4

.global lbl_804535F8
lbl_804535F8:
.incbin "baserom.dol", 0x3D2458, 0x8

