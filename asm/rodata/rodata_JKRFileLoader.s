.include "macros.inc"
.section .rodata, "a"  # 0x8039d150 - 0x8039d158

.global lbl_8039D150
lbl_8039D150:
.incbin "baserom.dol", 0x39A150, 0x8

