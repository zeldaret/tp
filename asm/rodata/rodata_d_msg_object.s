.include "macros.inc"
.section .rodata, "a"  # 0x80399660 - 0x803996e8

.global lbl_80399660
lbl_80399660:
.incbin "baserom.dol", 0x396660, 0x88

