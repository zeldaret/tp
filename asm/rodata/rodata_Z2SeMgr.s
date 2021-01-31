.include "macros.inc"
.section .rodata, "a"  # 0x8039b9f0 - 0x8039ba08

.global lbl_8039B9F0
lbl_8039B9F0:
.incbin "baserom.dol", 0x3989F0, 0xC

.global lbl_8039B9FC
lbl_8039B9FC:
.incbin "baserom.dol", 0x3989FC, 0xC

