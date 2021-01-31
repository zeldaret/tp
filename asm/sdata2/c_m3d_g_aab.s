.include "macros.inc"
.section .sdata2, "a"  # 0x804551d0 - 0x804551e0

.global lbl_804551D0
lbl_804551D0:
.incbin "baserom.dol", 0x3D4030, 0x4

.global lbl_804551D4
lbl_804551D4:
.incbin "baserom.dol", 0x3D4034, 0x4

.global lbl_804551D8
lbl_804551D8:
.incbin "baserom.dol", 0x3D4038, 0x8

