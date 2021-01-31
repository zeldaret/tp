.include "macros.inc"
.section .rodata, "a"  # 0x80373d68 - 0x80373dd0

.global lbl_80373D68
lbl_80373D68:
.incbin "baserom.dol", 0x370D68, 0x68

