.include "macros.inc"
.section .sdata2, "a"  # 0x804550a0 - 0x804550a8

.global lbl_804550A0
lbl_804550A0:
.incbin "baserom.dol", 0x3D3F00, 0x8

