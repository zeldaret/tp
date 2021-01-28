.include "macros.inc"
.section .rodata, "a"  # 0x803a2588 - 0x803a25f0

.global lbl_803A2588
lbl_803A2588:
.incbin "baserom.dol", 0x39F588, 0x68

