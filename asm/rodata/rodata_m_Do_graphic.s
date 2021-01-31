.include "macros.inc"
.section .rodata, "a"  # 0x80373dd0 - 0x80373de8

.global lbl_80373DD0
lbl_80373DD0:
.incbin "baserom.dol", 0x370DD0, 0x18

