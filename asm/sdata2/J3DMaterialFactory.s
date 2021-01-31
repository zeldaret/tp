.include "macros.inc"
.section .sdata2, "a"  # 0x804564a8 - 0x804564b8

.global lbl_804564A8
lbl_804564A8:
.incbin "baserom.dol", 0x3D5308, 0x4

.global lbl_804564AC
lbl_804564AC:
.incbin "baserom.dol", 0x3D530C, 0x4

.global lbl_804564B0
lbl_804564B0:
.incbin "baserom.dol", 0x3D5310, 0x8

