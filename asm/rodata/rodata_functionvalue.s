.include "macros.inc"
.section .rodata, "a"  # 0x8039a9f0 - 0x8039aa00

.global lbl_8039A9F0
lbl_8039A9F0:
.incbin "baserom.dol", 0x3979F0, 0x10

