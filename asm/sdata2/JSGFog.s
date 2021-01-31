.include "macros.inc"
.section .sdata2, "a"  # 0x804553e0 - 0x804553e8

.global lbl_804553E0
lbl_804553E0:
.incbin "baserom.dol", 0x3D4240, 0x4

.global lbl_804553E4
lbl_804553E4:
.incbin "baserom.dol", 0x3D4244, 0x4

