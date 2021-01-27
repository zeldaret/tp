.include "macros.inc"
.section .sdata2, "a"  # 0x804550e8 - 0x804550f0

.global lbl_804550E8
lbl_804550E8:
.incbin "baserom.dol", 0x3D3F48, 0x4

.global lbl_804550EC
lbl_804550EC:
.incbin "baserom.dol", 0x3D3F4C, 0x4

