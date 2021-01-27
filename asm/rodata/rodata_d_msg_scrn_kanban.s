.include "macros.inc"
.section .rodata, "a"  # 0x80399aa0 - 0x80399b08

.global lbl_80399AA0
lbl_80399AA0:
.incbin "baserom.dol", 0x396AA0, 0x18

.global lbl_80399AB8
lbl_80399AB8:
.incbin "baserom.dol", 0x396AB8, 0x50

