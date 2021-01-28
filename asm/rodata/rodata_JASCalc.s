.include "macros.inc"
.section .rodata, "a"  # 0x8039abb8 - 0x8039afd0

.global lbl_8039ABB8
lbl_8039ABB8:
.incbin "baserom.dol", 0x397BB8, 0x400

.global lbl_8039AFB8
lbl_8039AFB8:
.incbin "baserom.dol", 0x397FB8, 0x18

