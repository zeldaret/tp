.include "macros.inc"
.section .rodata, "a"  # 0x8039d260 - 0x8039d290

.global lbl_8039D260
lbl_8039D260:
.incbin "baserom.dol", 0x39A260, 0x30

