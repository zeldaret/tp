.include "macros.inc"
.section .rodata, "a"  # 0x8037a780 - 0x8037a7e0

.global lbl_8037A780
lbl_8037A780:
.incbin "baserom.dol", 0x377780, 0x60

