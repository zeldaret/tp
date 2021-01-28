.include "macros.inc"
.section .rodata, "a"  # 0x803a2370 - 0x803a2380

.global lbl_803A2370
lbl_803A2370:
.incbin "baserom.dol", 0x39F370, 0x10

