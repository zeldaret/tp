.include "macros.inc"
.section .sdata2, "a"  # 0x804563a8 - 0x804563b0

.global lbl_804563A8
lbl_804563A8:
.incbin "baserom.dol", 0x3D5208, 0x4

.global lbl_804563AC
lbl_804563AC:
.incbin "baserom.dol", 0x3D520C, 0x4

