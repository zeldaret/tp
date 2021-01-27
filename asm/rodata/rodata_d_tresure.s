.include "macros.inc"
.section .rodata, "a"  # 0x8037b0d8 - 0x8037b100

.global lbl_8037B0D8
lbl_8037B0D8:
.incbin "baserom.dol", 0x3780D8, 0x28

