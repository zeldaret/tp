.include "macros.inc"
.section .rodata, "a"  # 0x8039b8f8 - 0x8039b910

.global lbl_8039B8F8
lbl_8039B8F8:
.incbin "baserom.dol", 0x3988F8, 0x18

