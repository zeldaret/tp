.include "macros.inc"
.section .rodata, "a"  # 0x8039c250 - 0x8039c260

.global lbl_8039C250
lbl_8039C250:
.incbin "baserom.dol", 0x399250, 0x10

