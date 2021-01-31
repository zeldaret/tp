.include "macros.inc"
.section .rodata, "a"  # 0x80398048 - 0x80398158

.global lbl_80398048
lbl_80398048:
.incbin "baserom.dol", 0x395048, 0x50

.global lbl_80398098
lbl_80398098:
.incbin "baserom.dol", 0x395098, 0x50

.global lbl_803980E8
lbl_803980E8:
.incbin "baserom.dol", 0x3950E8, 0x70

