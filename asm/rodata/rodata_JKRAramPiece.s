.include "macros.inc"
.section .rodata, "a"  # 0x8039d0b8 - 0x8039d120

.global lbl_8039D0B8
lbl_8039D0B8:
.incbin "baserom.dol", 0x39A0B8, 0x68

