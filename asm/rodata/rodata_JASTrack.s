.include "macros.inc"
.section .rodata, "a"  # 0x8039afd0 - 0x8039b018

.global lbl_8039AFD0
lbl_8039AFD0:
.incbin "baserom.dol", 0x397FD0, 0x18

.global lbl_8039AFE8
lbl_8039AFE8:
.incbin "baserom.dol", 0x397FE8, 0x18

.global lbl_8039B000
lbl_8039B000:
.incbin "baserom.dol", 0x398000, 0x18

