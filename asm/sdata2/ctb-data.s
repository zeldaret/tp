.include "macros.inc"
.section .sdata2, "a"  # 0x804553f8 - 0x80455400

.global lbl_804553F8
lbl_804553F8:
.incbin "baserom.dol", 0x3D4258, 0x8

