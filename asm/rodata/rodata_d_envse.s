.include "macros.inc"
.section .rodata, "a"  # 0x80394308 - 0x80394310

.global lbl_80394308
lbl_80394308:
.incbin "baserom.dol", 0x391308, 0x8

