.include "macros.inc"
.section .rodata, "a"  # 0x803a1c00 - 0x803a1c10

.global lbl_803A1C00
lbl_803A1C00:
.incbin "baserom.dol", 0x39EC00, 0x10

