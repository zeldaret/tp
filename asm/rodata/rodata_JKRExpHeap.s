.include "macros.inc"
.section .rodata, "a"  # 0x8039caf0 - 0x8039ce50

.global lbl_8039CAF0
lbl_8039CAF0:
.incbin "baserom.dol", 0x399AF0, 0x360

