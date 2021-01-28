.include "macros.inc"
.section .rodata, "a"  # 0x80378f38 - 0x803790b0

.global lbl_80378F38
lbl_80378F38:
.incbin "baserom.dol", 0x375F38, 0x178

