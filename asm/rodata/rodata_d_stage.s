.include "macros.inc"
.section .rodata, "a"  # 0x80378a50 - 0x80378e48

.global lbl_80378A50
lbl_80378A50:
.incbin "baserom.dol", 0x375A50, 0x3F8

