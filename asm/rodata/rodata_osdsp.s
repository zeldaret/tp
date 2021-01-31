.include "macros.inc"
.section .rodata, "a"  # 0x8039b8b8 - 0x8039b8f8

.global lbl_8039B8B8
lbl_8039B8B8:
.incbin "baserom.dol", 0x3988B8, 0x1C

.global lbl_8039B8D4
lbl_8039B8D4:
.incbin "baserom.dol", 0x3988D4, 0x24

