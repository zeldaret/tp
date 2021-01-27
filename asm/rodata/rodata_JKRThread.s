.include "macros.inc"
.section .rodata, "a"  # 0x8039cfa8 - 0x8039d078

.global lbl_8039CFA8
lbl_8039CFA8:
.incbin "baserom.dol", 0x399FA8, 0xD0

