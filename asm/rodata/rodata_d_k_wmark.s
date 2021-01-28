.include "macros.inc"
.section .rodata, "a"  # 0x8039a488 - 0x8039a4a0

.global lbl_8039A488
lbl_8039A488:
.incbin "baserom.dol", 0x397488, 0xC

.global lbl_8039A494
lbl_8039A494:
.incbin "baserom.dol", 0x397494, 0xC

