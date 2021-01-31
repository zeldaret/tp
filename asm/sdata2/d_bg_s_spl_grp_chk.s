.include "macros.inc"
.section .sdata2, "a"  # 0x804526e8 - 0x804526f0

.global lbl_804526E8
lbl_804526E8:
.incbin "baserom.dol", 0x3D1548, 0x4

.global lbl_804526EC
lbl_804526EC:
.incbin "baserom.dol", 0x3D154C, 0x4

