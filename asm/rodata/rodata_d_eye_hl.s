.include "macros.inc"
.section .rodata, "a"  # 0x8037b100 - 0x8037b140

.global lbl_8037B100
lbl_8037B100:
.incbin "baserom.dol", 0x378100, 0x40

