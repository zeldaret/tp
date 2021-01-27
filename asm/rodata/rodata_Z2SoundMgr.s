.include "macros.inc"
.section .rodata, "a"  # 0x8039b9c0 - 0x8039b9f0

.global lbl_8039B9C0
lbl_8039B9C0:
.incbin "baserom.dol", 0x3989C0, 0x10

.global lbl_8039B9D0
lbl_8039B9D0:
.incbin "baserom.dol", 0x3989D0, 0x20

