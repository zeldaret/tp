.include "macros.inc"
.section .rodata, "a"  # 0x803a2220 - 0x803a2238

.global lbl_803A2220
lbl_803A2220:
.incbin "baserom.dol", 0x39F220, 0x18

