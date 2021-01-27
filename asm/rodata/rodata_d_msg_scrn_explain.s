.include "macros.inc"
.section .rodata, "a"  # 0x80399910 - 0x80399990

.global lbl_80399910
lbl_80399910:
.incbin "baserom.dol", 0x396910, 0x80

