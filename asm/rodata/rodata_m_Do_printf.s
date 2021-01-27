.include "macros.inc"
.section .rodata, "a"  # 0x80373cb0 - 0x80373d68

.global lbl_80373CB0
lbl_80373CB0:
.incbin "baserom.dol", 0x370CB0, 0xB8

