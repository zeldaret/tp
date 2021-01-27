.include "macros.inc"
.section .rodata, "a"  # 0x8039aba8 - 0x8039abb8

.global lbl_8039ABA8
lbl_8039ABA8:
.incbin "baserom.dol", 0x397BA8, 0x10

