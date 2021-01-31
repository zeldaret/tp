.include "macros.inc"
.section .rodata, "a"  # 0x8039d2f0 - 0x8039d360

.global lbl_8039D2F0
lbl_8039D2F0:
.incbin "baserom.dol", 0x39A2F0, 0x70

