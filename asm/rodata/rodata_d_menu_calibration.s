.include "macros.inc"
.section .rodata, "a"  # 0x80394f70 - 0x80394f78

.global lbl_80394F70
lbl_80394F70:
.incbin "baserom.dol", 0x391F70, 0x8

