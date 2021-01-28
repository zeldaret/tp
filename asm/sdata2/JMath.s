.include "macros.inc"
.section .sdata2, "a"  # 0x804564c8 - 0x804564d8

.global lbl_804564C8
lbl_804564C8:
.incbin "baserom.dol", 0x3D5328, 0x8

.global lbl_804564D0
lbl_804564D0:
.incbin "baserom.dol", 0x3D5330, 0x8

