.include "macros.inc"
.section .rodata, "a"  # 0x80397960 - 0x80397a18

.global lbl_80397960
lbl_80397960:
.incbin "baserom.dol", 0x394960, 0xB8

