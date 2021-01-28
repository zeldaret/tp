.include "macros.inc"
.section .rodata, "a"  # 0x8039b190 - 0x8039b1b8

.global lbl_8039B190
lbl_8039B190:
.incbin "baserom.dol", 0x398190, 0xC

.global lbl_8039B19C
lbl_8039B19C:
.incbin "baserom.dol", 0x39819C, 0x1C

