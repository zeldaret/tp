.include "macros.inc"
.section .rodata, "a"  # 0x80393d88 - 0x80393d98

.global lbl_80393D88
lbl_80393D88:
.incbin "baserom.dol", 0x390D88, 0x10

