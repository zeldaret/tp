.include "macros.inc"
.section .rodata, "a"  # 0x80378878 - 0x80378880

.global lbl_80378878
lbl_80378878:
.incbin "baserom.dol", 0x375878, 0x8

