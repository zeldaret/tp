.include "macros.inc"
.section .rodata, "a"  # 0x8039b168 - 0x8039b190

.global lbl_8039B168
lbl_8039B168:
.incbin "baserom.dol", 0x398168, 0xC

.global lbl_8039B174
lbl_8039B174:
.incbin "baserom.dol", 0x398174, 0x1C

