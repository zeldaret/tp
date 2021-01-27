.include "macros.inc"
.section .rodata, "a"  # 0x8039d490 - 0x8039d9a0

.global lbl_8039D490
lbl_8039D490:
.incbin "baserom.dol", 0x39A490, 0x510

