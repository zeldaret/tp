.include "macros.inc"
.section .rodata, "a"  # 0x80374460 - 0x80374640

.global lbl_80374460
lbl_80374460:
.incbin "baserom.dol", 0x371460, 0x1E0

