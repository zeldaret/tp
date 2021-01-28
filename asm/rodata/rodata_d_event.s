.include "macros.inc"
.section .rodata, "a"  # 0x80379d80 - 0x80379dd0

.global lbl_80379D80
lbl_80379D80:
.incbin "baserom.dol", 0x376D80, 0x50

