.include "macros.inc"
.section .sdata2, "a"  # 0x804560d0 - 0x804560d8

.global lbl_804560D0
lbl_804560D0:
.incbin "baserom.dol", 0x3D4F30, 0x8

