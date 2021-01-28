.include "macros.inc"
.section .rodata, "a"  # 0x8039cad8 - 0x8039caf0

.global lbl_8039CAD8
lbl_8039CAD8:
.incbin "baserom.dol", 0x399AD8, 0x18

