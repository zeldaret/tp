.include "macros.inc"
.section .rodata, "a"  # 0x8037b0d0 - 0x8037b0d8

.global lbl_8037B0D0
lbl_8037B0D0:
.incbin "baserom.dol", 0x3780D0, 0x8

