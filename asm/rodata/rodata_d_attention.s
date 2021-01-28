.include "macros.inc"
.section .rodata, "a"  # 0x8037a770 - 0x8037a780

.global lbl_8037A770
lbl_8037A770:
.incbin "baserom.dol", 0x377770, 0x10

