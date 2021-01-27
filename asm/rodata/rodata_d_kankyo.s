.include "macros.inc"
.section .rodata, "a"  # 0x80394c60 - 0x80394f38

.global lbl_80394C60
lbl_80394C60:
.incbin "baserom.dol", 0x391C60, 0xC

.global lbl_80394C6C
lbl_80394C6C:
.incbin "baserom.dol", 0x391C6C, 0x2CC

