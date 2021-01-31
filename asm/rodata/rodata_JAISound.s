.include "macros.inc"
.section .rodata, "a"  # 0x8039b910 - 0x8039b950

.global lbl_8039B910
lbl_8039B910:
.incbin "baserom.dol", 0x398910, 0x40

