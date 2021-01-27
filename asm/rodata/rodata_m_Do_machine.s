.include "macros.inc"
.section .rodata, "a"  # 0x80373de8 - 0x803740c0

.global lbl_80373DE8
lbl_80373DE8:
.incbin "baserom.dol", 0x370DE8, 0x2D8

