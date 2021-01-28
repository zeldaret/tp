.include "macros.inc"
.section .rodata, "a"  # 0x8039c230 - 0x8039c240

.global lbl_8039C230
lbl_8039C230:
.incbin "baserom.dol", 0x399230, 0x10

