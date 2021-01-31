.include "macros.inc"
.section .rodata, "a"  # 0x8039c240 - 0x8039c250

.global lbl_8039C240
lbl_8039C240:
.incbin "baserom.dol", 0x399240, 0x10

