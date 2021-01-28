.include "macros.inc"
.section .sdata2, "a"  # 0x804563a0 - 0x804563a8

.global lbl_804563A0
lbl_804563A0:
.incbin "baserom.dol", 0x3D5200, 0x8

