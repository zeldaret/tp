.include "macros.inc"
.section .rodata, "a"  # 0x8039d120 - 0x8039d150

.global lbl_8039D120
lbl_8039D120:
.incbin "baserom.dol", 0x39A120, 0x30

