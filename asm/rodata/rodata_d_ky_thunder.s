.include "macros.inc"
.section .rodata, "a"  # 0x80394f40 - 0x80394f50

.global lbl_80394F40
lbl_80394F40:
.incbin "baserom.dol", 0x391F40, 0x10

