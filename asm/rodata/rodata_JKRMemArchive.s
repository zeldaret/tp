.include "macros.inc"
.section .rodata, "a"  # 0x8039d160 - 0x8039d188

.global lbl_8039D160
lbl_8039D160:
.incbin "baserom.dol", 0x39A160, 0x28

