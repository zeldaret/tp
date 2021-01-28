.include "macros.inc"
.section .rodata, "a"  # 0x8039da20 - 0x803a1b80

.global lbl_8039DA20
lbl_8039DA20:
.incbin "baserom.dol", 0x39DA20, 0x25E4

.global lbl_803A0004
lbl_803A0004:
.incbin "baserom.dol", 0x3A0004, 0x1B7C

