.include "macros.inc"
.section .rodata, "a"  # 0x8039bc88 - 0x8039bfa8

.global lbl_8039BC88
lbl_8039BC88:
.incbin "baserom.dol", 0x398C88, 0x320

