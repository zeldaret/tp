.include "macros.inc"
.section .sdata2, "a"  # 0x804564b8 - 0x804564c0

.global lbl_804564B8
lbl_804564B8:
.incbin "baserom.dol", 0x3D5318, 0x4

.global lbl_804564BC
lbl_804564BC:
.incbin "baserom.dol", 0x3D531C, 0x4

