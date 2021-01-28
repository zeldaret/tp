.include "macros.inc"
.section .rodata, "a"  # 0x80392640 - 0x80392680

.global lbl_80392640
lbl_80392640:
.incbin "baserom.dol", 0x38F640, 0x40

