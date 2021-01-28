.include "macros.inc"
.section .rodata, "a"  # 0x80394f50 - 0x80394f70

.global lbl_80394F50
lbl_80394F50:
.incbin "baserom.dol", 0x391F50, 0x20

