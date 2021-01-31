.include "macros.inc"
.section .rodata, "a"  # 0x8039aa00 - 0x8039aa40

.global lbl_8039AA00
lbl_8039AA00:
.incbin "baserom.dol", 0x397A00, 0x40

