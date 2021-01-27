.include "macros.inc"
.section .sdata2, "a"  # 0x804564c0 - 0x804564c8

.global lbl_804564C0
lbl_804564C0:
.incbin "baserom.dol", 0x3D5320, 0x8

