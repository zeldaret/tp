.include "macros.inc"
.section .rodata, "a"  # 0x80374640 - 0x80378878

.global lbl_80374640
lbl_80374640:
.incbin "baserom.dol", 0x371640, 0x17A8

.global lbl_80375DE8
lbl_80375DE8:
.incbin "baserom.dol", 0x372DE8, 0x2A90

