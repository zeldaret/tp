.include "macros.inc"
.section .rodata, "a"  # 0x80379840 - 0x80379c30

.global lbl_80379840
lbl_80379840:
.incbin "baserom.dol", 0x376840, 0x64

.global lbl_803798A4
lbl_803798A4:
.incbin "baserom.dol", 0x3768A4, 0x14

.global lbl_803798B8
lbl_803798B8:
.incbin "baserom.dol", 0x3768B8, 0x378

