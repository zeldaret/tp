.include "macros.inc"
.section .rodata, "a"  # 0x8039b950 - 0x8039b9c0

.global lbl_8039B950
lbl_8039B950:
.incbin "baserom.dol", 0x398950, 0x70

