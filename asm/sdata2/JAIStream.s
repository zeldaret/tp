.include "macros.inc"
.section .sdata2, "a"  # 0x804557f0 - 0x80455800

.global lbl_804557F0
lbl_804557F0:
.incbin "baserom.dol", 0x3D4650, 0x4

.global lbl_804557F4
lbl_804557F4:
.incbin "baserom.dol", 0x3D4654, 0x4

.global lbl_804557F8
lbl_804557F8:
.incbin "baserom.dol", 0x3D4658, 0x8

