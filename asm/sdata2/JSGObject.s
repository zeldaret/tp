.include "macros.inc"
.section .sdata2, "a"  # 0x804553f0 - 0x804553f8

.global lbl_804553F0
lbl_804553F0:
.incbin "baserom.dol", 0x3D4250, 0x8

