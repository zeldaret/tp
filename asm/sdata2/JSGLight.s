.include "macros.inc"
.section .sdata2, "a"  # 0x804553e8 - 0x804553f0

.global lbl_804553E8
lbl_804553E8:
.incbin "baserom.dol", 0x3D4248, 0x8

