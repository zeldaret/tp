.include "macros.inc"
.section .rodata, "a"  # 0x80374408 - 0x80374460

.global lbl_80374408
lbl_80374408:
.incbin "baserom.dol", 0x371408, 0x58

