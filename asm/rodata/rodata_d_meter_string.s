.include "macros.inc"
.section .rodata, "a"  # 0x80398210 - 0x80398258

.global lbl_80398210
lbl_80398210:
.incbin "baserom.dol", 0x395210, 0x48

