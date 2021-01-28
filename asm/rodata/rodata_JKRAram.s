.include "macros.inc"
.section .rodata, "a"  # 0x8039d078 - 0x8039d0b8

.global lbl_8039D078
lbl_8039D078:
.incbin "baserom.dol", 0x39A078, 0x40

