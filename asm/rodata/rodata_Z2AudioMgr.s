.include "macros.inc"
.section .rodata, "a"  # 0x8039ca58 - 0x8039cad8

.global lbl_8039CA58
lbl_8039CA58:
.incbin "baserom.dol", 0x399A58, 0x80

