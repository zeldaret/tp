.include "macros.inc"
.section .rodata, "a"  # 0x80394828 - 0x803948b8

.global lbl_80394828
lbl_80394828:
.incbin "baserom.dol", 0x391828, 0x90

