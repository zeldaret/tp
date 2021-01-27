.include "macros.inc"
.section .rodata, "a"  # 0x8039d1b0 - 0x8039d220

.global lbl_8039D1B0
lbl_8039D1B0:
.incbin "baserom.dol", 0x39A1B0, 0x70

