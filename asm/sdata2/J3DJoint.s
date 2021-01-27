.include "macros.inc"
.section .sdata2, "a"  # 0x804564a0 - 0x804564a8

.global lbl_804564A0
lbl_804564A0:
.incbin "baserom.dol", 0x3D5300, 0x4

.global lbl_804564A4
lbl_804564A4:
.incbin "baserom.dol", 0x3D5304, 0x4

