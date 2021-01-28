.include "macros.inc"
.section .sdata2, "a"  # 0x804526f0 - 0x804526f8

.global lbl_804526F0
lbl_804526F0:
.incbin "baserom.dol", 0x3D1550, 0x4

.global lbl_804526F4
lbl_804526F4:
.incbin "baserom.dol", 0x3D1554, 0x4

