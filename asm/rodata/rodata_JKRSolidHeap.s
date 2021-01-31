.include "macros.inc"
.section .rodata, "a"  # 0x8039ce50 - 0x8039cfa8

.global lbl_8039CE50
lbl_8039CE50:
.incbin "baserom.dol", 0x399E50, 0x158

