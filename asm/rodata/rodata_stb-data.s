.include "macros.inc"
.section .rodata, "a"  # 0x8039ab88 - 0x8039aba8

.global lbl_8039AB88
lbl_8039AB88:
.incbin "baserom.dol", 0x397B88, 0x20

