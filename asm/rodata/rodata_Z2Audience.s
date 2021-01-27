.include "macros.inc"
.section .rodata, "a"  # 0x8039c220 - 0x8039c230

.global lbl_8039C220
lbl_8039C220:
.incbin "baserom.dol", 0x399220, 0x10

