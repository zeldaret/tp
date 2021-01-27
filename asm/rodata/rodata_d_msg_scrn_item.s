.include "macros.inc"
.section .rodata, "a"  # 0x80399990 - 0x80399a20

.global lbl_80399990
lbl_80399990:
.incbin "baserom.dol", 0x396990, 0x90

