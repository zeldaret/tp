.include "macros.inc"
.section .rodata, "a"  # 0x80399a20 - 0x80399a80

.global lbl_80399A20
lbl_80399A20:
.incbin "baserom.dol", 0x396A20, 0x60

