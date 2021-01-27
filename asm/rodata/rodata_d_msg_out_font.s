.include "macros.inc"
.section .rodata, "a"  # 0x80399350 - 0x803995c8

.global lbl_80399350
lbl_80399350:
.incbin "baserom.dol", 0x396350, 0x278

