.include "macros.inc"
.section .rodata, "a"  # 0x8039ba08 - 0x8039bc88

.global lbl_8039BA08
lbl_8039BA08:
.incbin "baserom.dol", 0x398A08, 0x280

