.include "macros.inc"
.section .sdata2, "a"  # 0x804553d0 - 0x804553d8

.global lbl_804553D0
lbl_804553D0:
.incbin "baserom.dol", 0x3D4230, 0x8

