.include "macros.inc"
.section .rodata, "a"  # 0x80399bb0 - 0x80399c18

.global lbl_80399BB0
lbl_80399BB0:
.incbin "baserom.dol", 0x396BB0, 0x68

