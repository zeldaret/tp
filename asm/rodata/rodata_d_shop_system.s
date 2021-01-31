.include "macros.inc"
.section .rodata, "a"  # 0x80394c10 - 0x80394c28

.global lbl_80394C10
lbl_80394C10:
.incbin "baserom.dol", 0x391C10, 0x18

