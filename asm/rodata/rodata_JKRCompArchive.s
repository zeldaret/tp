.include "macros.inc"
.section .rodata, "a"  # 0x8039d220 - 0x8039d260

.global lbl_8039D220
lbl_8039D220:
.incbin "baserom.dol", 0x39A220, 0x40

