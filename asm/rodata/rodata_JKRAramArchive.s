.include "macros.inc"
.section .rodata, "a"  # 0x8039d188 - 0x8039d1b0

.global lbl_8039D188
lbl_8039D188:
.incbin "baserom.dol", 0x39A188, 0x28

