.include "macros.inc"
.section .rodata, "a"  # 0x8039d360 - 0x8039d390

.global lbl_8039D360
lbl_8039D360:
.incbin "baserom.dol", 0x39A360, 0x30

