.include "macros.inc"
.section .rodata, "a"  # 0x8039a2c8 - 0x8039a388

.global lbl_8039A2C8
lbl_8039A2C8:
.incbin "baserom.dol", 0x3972C8, 0x10

.global lbl_8039A2D8
lbl_8039A2D8:
.incbin "baserom.dol", 0x3972D8, 0xB0

