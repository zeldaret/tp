.include "macros.inc"
.section .rodata, "a"  # 0x803790b0 - 0x803790c0

.global lbl_803790B0
lbl_803790B0:
.incbin "baserom.dol", 0x3760B0, 0x10

